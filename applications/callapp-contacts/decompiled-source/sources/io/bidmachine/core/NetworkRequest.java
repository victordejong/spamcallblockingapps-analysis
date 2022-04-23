package io.bidmachine.core;

import android.util.Base64;
import com.google.api.client.json.Json;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest.class */
public abstract class NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> {
    private static final Executor executor = Executors.newFixedThreadPool(2);
    private Callback<RequestResultType, ErrorResultType> callback;
    private CancelCallback cancelCallback;
    private ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> contentEncoders;
    private URLConnection currentConnection;
    private State currentState = State.Idle;
    private RequestDataBinder<RequestDataType, RequestResultType, ErrorResultType> dataBinder;
    private ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> dataEncoders;
    private ErrorResultType errorResult;
    private Method method;
    private String path;
    private RequestDataType requestData;
    private RequestResultType requestResult;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$Base64RequestDataEncoder.class */
    public static class Base64RequestDataEncoder extends RequestDataEncoder {
        @Override // io.bidmachine.core.NetworkRequest.RequestDataEncoder
        protected byte[] decode(NetworkRequest networkRequest, URLConnection uRLConnection, byte[] bArr) {
            return Base64.decode(bArr, 0);
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataEncoder
        protected byte[] encode(NetworkRequest networkRequest, URLConnection uRLConnection, byte[] bArr) {
            return Base64.encode(bArr, 0);
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$Callback.class */
    public interface Callback<RequestResultType, ErrorResultType> {
        void onFail(ErrorResultType errorresulttype);

        void onSuccess(RequestResultType requestresulttype);
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$CancelCallback.class */
    public interface CancelCallback {
        void onCanceled();
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$GZIPRequestDataEncoder.class */
    public static class GZIPRequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> extends RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> {
        @Override // io.bidmachine.core.NetworkRequest.RequestDataEncoder
        protected byte[] decode(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            ByteArrayOutputStream byteArrayOutputStream;
            ByteArrayInputStream byteArrayInputStream;
            GZIPInputStream gZIPInputStream;
            Throwable th;
            if (!"gzip".equals(uRLConnection.getContentEncoding())) {
                return bArr;
            }
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr);
                    try {
                        GZIPInputStream gZIPInputStream2 = new GZIPInputStream(byteArrayInputStream2);
                        try {
                            byte[] bArr2 = new byte[1024];
                            while (true) {
                                int read = gZIPInputStream2.read(bArr2);
                                if (read != -1) {
                                    byteArrayOutputStream.write(bArr2, 0, read);
                                } else {
                                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                                    byteArrayOutputStream.flush();
                                    byteArrayOutputStream.close();
                                    byteArrayInputStream2.close();
                                    gZIPInputStream2.close();
                                    return byteArray;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            byteArrayInputStream = byteArrayInputStream2;
                            gZIPInputStream = gZIPInputStream2;
                            if (byteArrayOutputStream != null) {
                                byteArrayOutputStream.flush();
                                byteArrayOutputStream.close();
                            }
                            if (byteArrayInputStream != null) {
                                byteArrayInputStream.close();
                            }
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        gZIPInputStream = null;
                        byteArrayInputStream = byteArrayInputStream2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    byteArrayInputStream = null;
                    gZIPInputStream = null;
                }
            } catch (Throwable th5) {
                th = th5;
                gZIPInputStream = null;
                byteArrayInputStream = null;
                byteArrayOutputStream = null;
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataEncoder
        protected byte[] encode(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            GZIPOutputStream gZIPOutputStream;
            Throwable th;
            ByteArrayOutputStream byteArrayOutputStream = null;
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                    try {
                        gZIPOutputStream.write(bArr);
                        gZIPOutputStream.close();
                        byte[] byteArray = byteArrayOutputStream2.toByteArray();
                        byteArrayOutputStream2.flush();
                        byteArrayOutputStream2.close();
                        return byteArray;
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.flush();
                            byteArrayOutputStream.close();
                        }
                        if (gZIPOutputStream != null) {
                            gZIPOutputStream.flush();
                            gZIPOutputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    gZIPOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                gZIPOutputStream = null;
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataEncoder
        protected void prepareHeaders(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty("Accept-Encoding", "gzip");
            uRLConnection.setRequestProperty("Content-Encoding", "gzip");
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$JsonDataBinder.class */
    static abstract class JsonDataBinder<RequestResultType, ErrorResultType> extends RequestDataBinder<JSONObject, RequestResultType, ErrorResultType> {
        JsonDataBinder() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public byte[] obtainData(NetworkRequest<JSONObject, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, JSONObject jSONObject) throws Exception {
            if (jSONObject != null) {
                return jSONObject.toString().getBytes("UTF-8");
            }
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        protected void prepareHeaders(NetworkRequest<JSONObject, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty("Content-Type", Json.MEDIA_TYPE);
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$Method.class */
    public enum Method {
        Get("GET"),
        Post("POST");
        
        private String methodString;

        Method(String str) {
            this.methodString = str;
        }

        public final void apply(URLConnection uRLConnection) throws ProtocolException {
            if (uRLConnection instanceof HttpURLConnection) {
                ((HttpURLConnection) uRLConnection).setRequestMethod(this.methodString);
            }
        }

        public final String getMethodString() {
            return this.methodString;
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$RequestDataBinder.class */
    public static abstract class RequestDataBinder<RequestDataType, RequestResultType, ErrorResultType> {
        protected ErrorResultType createFailResult(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return null;
        }

        protected abstract RequestResultType createSuccessResult(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception;

        protected abstract byte[] obtainData(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, RequestDataType requestdatatype) throws Exception;

        protected abstract void prepareHeaders(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection);

        protected void prepareRequest(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection) {
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$RequestDataEncoder.class */
    public static abstract class RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> {
        protected abstract byte[] decode(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception;

        protected abstract byte[] encode(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception;

        protected void prepareHeaders(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection) {
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$SimpleJsonArrayDataBinder.class */
    public static class SimpleJsonArrayDataBinder<ErrorResultType> extends JsonDataBinder<JSONArray, ErrorResultType> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public JSONArray createSuccessResult(NetworkRequest<JSONObject, JSONArray, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return new JSONArray(new String(bArr));
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$SimpleJsonObjectDataBinder.class */
    public static class SimpleJsonObjectDataBinder<ErrorResultType> extends JsonDataBinder<JSONObject, ErrorResultType> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public JSONObject createSuccessResult(NetworkRequest<JSONObject, JSONObject, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return new JSONObject(new String(bArr));
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$State.class */
    public enum State {
        Idle,
        Running,
        Success,
        Fail,
        Canceled
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/NetworkRequest$a.class */
    final class a implements Runnable {
        private a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            NetworkRequest.this.process();
            if (NetworkRequest.this.callback != null && !NetworkRequest.this.isCanceled()) {
                if (NetworkRequest.this.currentState == State.Success) {
                    NetworkRequest.this.callback.onSuccess(NetworkRequest.this.requestResult);
                } else {
                    NetworkRequest.this.callback.onFail(NetworkRequest.this.errorResult);
                }
            }
        }
    }

    public NetworkRequest(String str, Method method, RequestDataType requestdatatype) {
        this.path = str;
        this.method = method;
        this.requestData = requestdatatype;
    }

    private InputStream obtainErrorStream(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getErrorStream();
        }
        return null;
    }

    private int obtainResponseCode(URLConnection uRLConnection) throws IOException {
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void process() {
        Throwable th;
        HttpURLConnection httpURLConnection;
        URLConnection openConnection;
        InputStream inputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th2;
        ByteArrayOutputStream byteArrayOutputStream2;
        InputStream inputStream2;
        ByteArrayOutputStream byteArrayOutputStream3;
        BufferedOutputStream bufferedOutputStream;
        Throwable th3;
        this.currentState = State.Running;
        try {
            openConnection = (this.path != null ? new URL(String.format("%s/%s", getBaseUrl(), this.path)) : new URL(getBaseUrl())).openConnection();
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
        }
        try {
            this.currentConnection = openConnection;
            this.method.apply(openConnection);
            prepareRequestParams(openConnection);
            byte[] obtainRequestData = obtainRequestData(openConnection);
            if (obtainRequestData != null) {
                byte[] encodeRequestData = encodeRequestData(openConnection, obtainRequestData);
                openConnection.setDoOutput(true);
                try {
                    bufferedOutputStream = new BufferedOutputStream(openConnection.getOutputStream());
                    try {
                        bufferedOutputStream.write(encodeRequestData);
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                    } catch (Throwable th5) {
                        th3 = th5;
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                        }
                        throw th3;
                    }
                } catch (Throwable th6) {
                    th3 = th6;
                    bufferedOutputStream = null;
                }
            }
            try {
                int obtainResponseCode = obtainResponseCode(openConnection);
                if (obtainResponseCode != 200) {
                    this.errorResult = obtainError(openConnection, obtainErrorStream(openConnection), obtainResponseCode);
                    inputStream2 = null;
                    byteArrayOutputStream2 = null;
                } else {
                    InputStream inputStream3 = openConnection.getInputStream();
                    try {
                        byteArrayOutputStream3 = new ByteArrayOutputStream();
                    } catch (Throwable th7) {
                        th2 = th7;
                        byteArrayOutputStream = null;
                        inputStream = inputStream3;
                    }
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = inputStream3.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            byteArrayOutputStream3.write(bArr, 0, read);
                        }
                        byte[] byteArray = byteArrayOutputStream3.toByteArray();
                        byte[] bArr2 = byteArray;
                        if (byteArray != null) {
                            bArr2 = decodeResponseData(openConnection, byteArray);
                        }
                        if (!(bArr2 == null || bArr2.length == 0)) {
                            RequestDataBinder<RequestDataType, RequestResultType, ErrorResultType> requestDataBinder = this.dataBinder;
                            inputStream2 = inputStream3;
                            byteArrayOutputStream2 = byteArrayOutputStream3;
                            if (requestDataBinder != null) {
                                RequestResultType createSuccessResult = requestDataBinder.createSuccessResult(this, openConnection, bArr2);
                                this.requestResult = createSuccessResult;
                                inputStream2 = inputStream3;
                                byteArrayOutputStream2 = byteArrayOutputStream3;
                                if (createSuccessResult == null) {
                                    this.errorResult = this.dataBinder.createFailResult(this, openConnection, bArr2);
                                    inputStream2 = inputStream3;
                                    byteArrayOutputStream2 = byteArrayOutputStream3;
                                }
                            }
                        }
                        this.errorResult = obtainError(openConnection, (URLConnection) null, obtainResponseCode);
                        byteArrayOutputStream2 = byteArrayOutputStream3;
                        inputStream2 = inputStream3;
                    } catch (Throwable th8) {
                        th2 = th8;
                        inputStream = inputStream3;
                        byteArrayOutputStream = byteArrayOutputStream3;
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.flush();
                            byteArrayOutputStream.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        throw th2;
                    }
                }
                if (byteArrayOutputStream2 != null) {
                    byteArrayOutputStream2.flush();
                    byteArrayOutputStream2.close();
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                if (openConnection instanceof HttpURLConnection) {
                    ((HttpURLConnection) openConnection).disconnect();
                }
                this.currentConnection = null;
                if (!isCanceled()) {
                    this.currentState = this.errorResult == null ? State.Success : State.Fail;
                }
            } catch (Throwable th9) {
                th2 = th9;
                inputStream = null;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th10) {
            th = th10;
            httpURLConnection = openConnection;
            try {
                th.printStackTrace();
                this.errorResult = obtainError(httpURLConnection, th);
                if (httpURLConnection instanceof HttpURLConnection) {
                    httpURLConnection.disconnect();
                }
                this.currentConnection = null;
                if (!isCanceled()) {
                    this.currentState = this.errorResult == null ? State.Success : State.Fail;
                }
            } catch (Throwable th11) {
                if (httpURLConnection instanceof HttpURLConnection) {
                    httpURLConnection.disconnect();
                }
                this.currentConnection = null;
                if (!isCanceled()) {
                    this.currentState = this.errorResult == null ? State.Success : State.Fail;
                }
                throw th11;
            }
        }
    }

    public void addContentEncoder(RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> requestDataEncoder) {
        if (this.contentEncoders == null) {
            this.contentEncoders = new ArrayList<>();
        }
        this.contentEncoders.add(requestDataEncoder);
    }

    public void addDataEncoder(RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> requestDataEncoder) {
        if (this.dataEncoders == null) {
            this.dataEncoders = new ArrayList<>();
        }
        this.dataEncoders.add(requestDataEncoder);
    }

    public void cancel() {
        this.currentState = State.Canceled;
        URLConnection uRLConnection = this.currentConnection;
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
        CancelCallback cancelCallback = this.cancelCallback;
        if (cancelCallback != null) {
            cancelCallback.onCanceled();
        }
    }

    protected byte[] decodeResponseData(URLConnection uRLConnection, byte[] bArr) throws Exception {
        ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> arrayList = this.contentEncoders;
        byte[] bArr2 = bArr;
        if (arrayList != null) {
            Iterator<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> it2 = arrayList.iterator();
            while (true) {
                bArr2 = bArr;
                if (!it2.hasNext()) {
                    break;
                }
                bArr = it2.next().decode(this, uRLConnection, bArr);
            }
        }
        ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> arrayList2 = this.dataEncoders;
        byte[] bArr3 = bArr2;
        if (arrayList2 != null) {
            Iterator<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> it3 = arrayList2.iterator();
            while (true) {
                bArr3 = bArr2;
                if (!it3.hasNext()) {
                    break;
                }
                bArr2 = it3.next().decode(this, uRLConnection, bArr2);
            }
        }
        return bArr3;
    }

    protected byte[] encodeRequestData(URLConnection uRLConnection, byte[] bArr) throws Exception {
        ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> arrayList = this.dataEncoders;
        byte[] bArr2 = bArr;
        if (arrayList != null) {
            Iterator<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> it2 = arrayList.iterator();
            while (true) {
                bArr2 = bArr;
                if (!it2.hasNext()) {
                    break;
                }
                RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> next = it2.next();
                next.prepareHeaders(this, uRLConnection);
                bArr = next.encode(this, uRLConnection, bArr);
            }
        }
        ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> arrayList2 = this.contentEncoders;
        byte[] bArr3 = bArr2;
        if (arrayList2 != null) {
            Iterator<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> it3 = arrayList2.iterator();
            while (true) {
                bArr3 = bArr2;
                if (!it3.hasNext()) {
                    break;
                }
                RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> next2 = it3.next();
                next2.prepareHeaders(this, uRLConnection);
                bArr2 = next2.encode(this, uRLConnection, bArr2);
            }
        }
        return bArr3;
    }

    protected String getBaseUrl() throws Exception {
        return "TODO: implement url";
    }

    public Method getMethod() {
        return this.method;
    }

    public String getPath() {
        return this.path;
    }

    public boolean isCanceled() {
        return this.currentState == State.Canceled;
    }

    protected abstract ErrorResultType obtainError(URLConnection uRLConnection, InputStream inputStream, int i);

    protected abstract ErrorResultType obtainError(URLConnection uRLConnection, RequestResultType requestresulttype, int i);

    protected abstract ErrorResultType obtainError(URLConnection uRLConnection, Throwable th);

    protected byte[] obtainRequestData(URLConnection uRLConnection) throws Exception {
        RequestDataBinder<RequestDataType, RequestResultType, ErrorResultType> requestDataBinder = this.dataBinder;
        if (requestDataBinder == null) {
            return null;
        }
        requestDataBinder.prepareRequest(this, uRLConnection);
        this.dataBinder.prepareHeaders(this, uRLConnection);
        return this.dataBinder.obtainData(this, uRLConnection, this.requestData);
    }

    public void prepareRequestParams(URLConnection uRLConnection) {
        uRLConnection.setConnectTimeout(PangleAdapterConfiguration.CONTENT_TYPE_ERROR);
        uRLConnection.setReadTimeout(PangleAdapterConfiguration.CONTENT_TYPE_ERROR);
    }

    public void request() {
        executor.execute(new a());
    }

    public void setCallback(Callback<RequestResultType, ErrorResultType> callback) {
        this.callback = callback;
    }

    public void setCancelCallback(CancelCallback cancelCallback) {
        this.cancelCallback = cancelCallback;
    }

    public void setDataBinder(RequestDataBinder<RequestDataType, RequestResultType, ErrorResultType> requestDataBinder) {
        this.dataBinder = requestDataBinder;
    }
}
