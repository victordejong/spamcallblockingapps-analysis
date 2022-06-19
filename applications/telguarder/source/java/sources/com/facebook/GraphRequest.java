package com.facebook;

import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import androidx.browser.trusted.sharing.ShareTarget;
import com.facebook.GraphRequestBatch;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Logger;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.telguarder.features.advertisements.AdvertOrmLiteHelper;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest.class */
public class GraphRequest {
    private static final String ACCEPT_LANGUAGE_HEADER = "Accept-Language";
    public static final String ACCESS_TOKEN_PARAM = "access_token";
    private static final String ATTACHED_FILES_PARAM = "attached_files";
    private static final String ATTACHMENT_FILENAME_PREFIX = "file";
    private static final String BATCH_APP_ID_PARAM = "batch_app_id";
    private static final String BATCH_BODY_PARAM = "body";
    private static final String BATCH_ENTRY_DEPENDS_ON_PARAM = "depends_on";
    private static final String BATCH_ENTRY_NAME_PARAM = "name";
    private static final String BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM = "omit_response_on_success";
    private static final String BATCH_METHOD_PARAM = "method";
    private static final String BATCH_PARAM = "batch";
    private static final String BATCH_RELATIVE_URL_PARAM = "relative_url";
    private static final String CAPTION_PARAM = "caption";
    private static final String CONTENT_ENCODING_HEADER = "Content-Encoding";
    private static final String CONTENT_TYPE_HEADER = "Content-Type";
    private static final String DEBUG_KEY = "__debug__";
    private static final String DEBUG_MESSAGES_KEY = "messages";
    private static final String DEBUG_MESSAGE_KEY = "message";
    private static final String DEBUG_MESSAGE_LINK_KEY = "link";
    private static final String DEBUG_MESSAGE_TYPE_KEY = "type";
    private static final String DEBUG_PARAM = "debug";
    private static final String DEBUG_SEVERITY_INFO = "info";
    private static final String DEBUG_SEVERITY_WARNING = "warning";
    public static final String FIELDS_PARAM = "fields";
    private static final String FORMAT_JSON = "json";
    private static final String FORMAT_PARAM = "format";
    private static final String GRAPH_PATH_FORMAT = "%s/%s";
    private static final String ISO_8601_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ssZ";
    public static final int MAXIMUM_BATCH_SIZE = 50;

    /* renamed from: ME */
    private static final String f86ME = "me";
    private static final String MIME_BOUNDARY;
    private static final String MY_FRIENDS = "me/friends";
    private static final String MY_PHOTOS = "me/photos";
    private static final String PICTURE_PARAM = "picture";
    private static final String SDK_ANDROID = "android";
    private static final String SDK_PARAM = "sdk";
    private static final String SEARCH = "search";
    public static final String TAG = "GraphRequest";
    private static final String USER_AGENT_BASE = "FBAndroidSDK";
    private static final String USER_AGENT_HEADER = "User-Agent";
    private static final String VIDEOS_SUFFIX = "/videos";
    private static String defaultBatchApplicationId;
    private static volatile String userAgent;
    private static Pattern versionPattern = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
    private AccessToken accessToken;
    private String batchEntryDependsOn;
    private String batchEntryName;
    private boolean batchEntryOmitResultOnSuccess;
    private Callback callback;
    private JSONObject graphObject;
    private String graphPath;
    private HttpMethod httpMethod;
    private String overriddenURL;
    private Bundle parameters;
    private boolean skipClientToken;
    private Object tag;
    private String version;

    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$Attachment.class */
    public static class Attachment {
        private final GraphRequest request;
        private final Object value;

        public Attachment(GraphRequest graphRequest, Object obj) {
            this.request = graphRequest;
            this.value = obj;
        }

        public GraphRequest getRequest() {
            return this.request;
        }

        public Object getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$Callback.class */
    public interface Callback {
        void onCompleted(GraphResponse graphResponse);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$GraphJSONArrayCallback.class */
    public interface GraphJSONArrayCallback {
        void onCompleted(JSONArray jSONArray, GraphResponse graphResponse);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$GraphJSONObjectCallback.class */
    public interface GraphJSONObjectCallback {
        void onCompleted(JSONObject jSONObject, GraphResponse graphResponse);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$KeyValueSerializer.class */
    public interface KeyValueSerializer {
        void writeString(String str, String str2) throws IOException;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$OnProgressCallback.class */
    public interface OnProgressCallback extends Callback {
        void onProgress(long j, long j2);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$ParcelableResourceWithMimeType.class */
    public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new Parcelable.Creator<ParcelableResourceWithMimeType>() { // from class: com.facebook.GraphRequest.ParcelableResourceWithMimeType.1
            @Override // android.os.Parcelable.Creator
            public ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
                return new ParcelableResourceWithMimeType(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public ParcelableResourceWithMimeType[] newArray(int i) {
                return new ParcelableResourceWithMimeType[i];
            }
        };
        private final String mimeType;
        private final RESOURCE resource;

        private ParcelableResourceWithMimeType(Parcel parcel) {
            this.mimeType = parcel.readString();
            this.resource = (RESOURCE) parcel.readParcelable(FacebookSdk.getApplicationContext().getClassLoader());
        }

        public ParcelableResourceWithMimeType(RESOURCE resource, String str) {
            this.mimeType = str;
            this.resource = resource;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        public String getMimeType() {
            return this.mimeType;
        }

        public RESOURCE getResource() {
            return this.resource;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mimeType);
            parcel.writeParcelable(this.resource, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$Serializer.class */
    public static class Serializer implements KeyValueSerializer {
        private boolean firstWrite = true;
        private final Logger logger;
        private final OutputStream outputStream;
        private boolean useUrlEncode;

        public Serializer(OutputStream outputStream, Logger logger, boolean z) {
            this.useUrlEncode = false;
            this.outputStream = outputStream;
            this.logger = logger;
            this.useUrlEncode = z;
        }

        private RuntimeException getInvalidTypeError() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        public void write(String str, Object... objArr) throws IOException {
            if (this.useUrlEncode) {
                this.outputStream.write(URLEncoder.encode(String.format(Locale.US, str, objArr), POBCommonConstants.URL_ENCODING).getBytes());
                return;
            }
            if (this.firstWrite) {
                this.outputStream.write("--".getBytes());
                this.outputStream.write(GraphRequest.MIME_BOUNDARY.getBytes());
                this.outputStream.write("\r\n".getBytes());
                this.firstWrite = false;
            }
            this.outputStream.write(String.format(str, objArr).getBytes());
        }

        public void writeBitmap(String str, Bitmap bitmap) throws IOException {
            writeContentDisposition(str, str, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.outputStream);
            writeLine("", new Object[0]);
            writeRecordBoundary();
            Logger logger = this.logger;
            if (logger != null) {
                logger.appendKeyValue("    " + str, "<Image>");
            }
        }

        public void writeBytes(String str, byte[] bArr) throws IOException {
            writeContentDisposition(str, str, "content/unknown");
            this.outputStream.write(bArr);
            writeLine("", new Object[0]);
            writeRecordBoundary();
            Logger logger = this.logger;
            if (logger != null) {
                logger.appendKeyValue("    " + str, String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(bArr.length)));
            }
        }

        public void writeContentDisposition(String str, String str2, String str3) throws IOException {
            if (this.useUrlEncode) {
                this.outputStream.write(String.format("%s=", str).getBytes());
                return;
            }
            write("Content-Disposition: form-data; name=\"%s\"", str);
            if (str2 != null) {
                write("; filename=\"%s\"", str2);
            }
            writeLine("", new Object[0]);
            if (str3 != null) {
                writeLine("%s: %s", "Content-Type", str3);
            }
            writeLine("", new Object[0]);
        }

        public void writeContentUri(String str, Uri uri, String str2) throws IOException {
            int i;
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            writeContentDisposition(str, str, str3);
            if (this.outputStream instanceof ProgressNoopOutputStream) {
                ((ProgressNoopOutputStream) this.outputStream).addProgress(Utility.getContentSize(uri));
                i = 0;
            } else {
                i = Utility.copyAndCloseInputStream(FacebookSdk.getApplicationContext().getContentResolver().openInputStream(uri), this.outputStream) + 0;
            }
            writeLine("", new Object[0]);
            writeRecordBoundary();
            Logger logger = this.logger;
            if (logger != null) {
                logger.appendKeyValue("    " + str, String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(i)));
            }
        }

        public void writeFile(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) throws IOException {
            int i;
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            writeContentDisposition(str, str, str3);
            OutputStream outputStream = this.outputStream;
            if (outputStream instanceof ProgressNoopOutputStream) {
                ((ProgressNoopOutputStream) outputStream).addProgress(parcelFileDescriptor.getStatSize());
                i = 0;
            } else {
                i = Utility.copyAndCloseInputStream(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.outputStream) + 0;
            }
            writeLine("", new Object[0]);
            writeRecordBoundary();
            Logger logger = this.logger;
            if (logger != null) {
                logger.appendKeyValue("    " + str, String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(i)));
            }
        }

        public void writeLine(String str, Object... objArr) throws IOException {
            write(str, objArr);
            if (!this.useUrlEncode) {
                write("\r\n", new Object[0]);
            }
        }

        public void writeObject(String str, Object obj, GraphRequest graphRequest) throws IOException {
            OutputStream outputStream = this.outputStream;
            if (outputStream instanceof RequestOutputStream) {
                ((RequestOutputStream) outputStream).setCurrentRequest(graphRequest);
            }
            if (GraphRequest.isSupportedParameterType(obj)) {
                writeString(str, GraphRequest.parameterToString(obj));
            } else if (obj instanceof Bitmap) {
                writeBitmap(str, (Bitmap) obj);
            } else if (obj instanceof byte[]) {
                writeBytes(str, (byte[]) obj);
            } else if (obj instanceof Uri) {
                writeContentUri(str, (Uri) obj, null);
            } else if (obj instanceof ParcelFileDescriptor) {
                writeFile(str, (ParcelFileDescriptor) obj, null);
            } else if (!(obj instanceof ParcelableResourceWithMimeType)) {
                throw getInvalidTypeError();
            } else {
                ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
                Parcelable resource = parcelableResourceWithMimeType.getResource();
                String mimeType = parcelableResourceWithMimeType.getMimeType();
                if (resource instanceof ParcelFileDescriptor) {
                    writeFile(str, (ParcelFileDescriptor) resource, mimeType);
                } else if (!(resource instanceof Uri)) {
                    throw getInvalidTypeError();
                } else {
                    writeContentUri(str, (Uri) resource, mimeType);
                }
            }
        }

        public void writeRecordBoundary() throws IOException {
            if (!this.useUrlEncode) {
                writeLine("--%s", GraphRequest.MIME_BOUNDARY);
            } else {
                this.outputStream.write("&".getBytes());
            }
        }

        public void writeRequestsAsJson(String str, JSONArray jSONArray, Collection<GraphRequest> collection) throws IOException, JSONException {
            OutputStream outputStream = this.outputStream;
            if (!(outputStream instanceof RequestOutputStream)) {
                writeString(str, jSONArray.toString());
                return;
            }
            RequestOutputStream requestOutputStream = (RequestOutputStream) outputStream;
            writeContentDisposition(str, null, null);
            write("[", new Object[0]);
            int i = 0;
            for (GraphRequest graphRequest : collection) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                requestOutputStream.setCurrentRequest(graphRequest);
                if (i > 0) {
                    write(",%s", jSONObject.toString());
                } else {
                    write("%s", jSONObject.toString());
                }
                i++;
            }
            write("]", new Object[0]);
            Logger logger = this.logger;
            if (logger == null) {
                return;
            }
            logger.appendKeyValue("    " + str, jSONArray.toString());
        }

        @Override // com.facebook.GraphRequest.KeyValueSerializer
        public void writeString(String str, String str2) throws IOException {
            writeContentDisposition(str, null, null);
            writeLine("%s", str2);
            writeRecordBoundary();
            Logger logger = this.logger;
            if (logger != null) {
                logger.appendKeyValue("    " + str, str2);
            }
        }
    }

    static {
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int nextInt = secureRandom.nextInt(11);
        for (int i = 0; i < nextInt + 30; i++) {
            sb.append(charArray[secureRandom.nextInt(charArray.length)]);
        }
        MIME_BOUNDARY = sb.toString();
    }

    public GraphRequest() {
        this(null, null, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String str) {
        this(accessToken, str, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod) {
        this(accessToken, str, bundle, httpMethod, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod, Callback callback) {
        this(accessToken, str, bundle, httpMethod, callback, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod, Callback callback, String str2) {
        this.batchEntryOmitResultOnSuccess = true;
        this.skipClientToken = false;
        this.accessToken = accessToken;
        this.graphPath = str;
        this.version = str2;
        setCallback(callback);
        setHttpMethod(httpMethod);
        if (bundle != null) {
            this.parameters = new Bundle(bundle);
        } else {
            this.parameters = new Bundle();
        }
        if (this.version == null) {
            this.version = FacebookSdk.getGraphApiVersion();
        }
    }

    public GraphRequest(AccessToken accessToken, URL url) {
        this.batchEntryOmitResultOnSuccess = true;
        this.skipClientToken = false;
        this.accessToken = accessToken;
        this.overriddenURL = url.toString();
        setHttpMethod(HttpMethod.GET);
        this.parameters = new Bundle();
    }

    private void addCommonParameters() {
        if (this.accessToken != null) {
            if (!this.parameters.containsKey("access_token")) {
                String token = this.accessToken.getToken();
                Logger.registerAccessToken(token);
                this.parameters.putString("access_token", token);
            }
        } else if (!this.skipClientToken && !this.parameters.containsKey("access_token")) {
            String applicationId = FacebookSdk.getApplicationId();
            String clientToken = FacebookSdk.getClientToken();
            if (Utility.isNullOrEmpty(applicationId) || Utility.isNullOrEmpty(clientToken)) {
                Utility.logd(TAG, "Warning: Request without access token missing application ID or client token.");
            } else {
                this.parameters.putString("access_token", applicationId + "|" + clientToken);
            }
        }
        this.parameters.putString("sdk", "android");
        this.parameters.putString("format", FORMAT_JSON);
        if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_INFO)) {
            this.parameters.putString(DEBUG_PARAM, DEBUG_SEVERITY_INFO);
        } else if (!FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
        } else {
            this.parameters.putString(DEBUG_PARAM, DEBUG_SEVERITY_WARNING);
        }
    }

    private String appendParametersToBaseUrl(String str, Boolean bool) {
        if (bool.booleanValue() || this.httpMethod != HttpMethod.POST) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            for (String str2 : this.parameters.keySet()) {
                Object obj = this.parameters.get(str2);
                Object obj2 = obj;
                if (obj == null) {
                    obj2 = "";
                }
                if (isSupportedParameterType(obj2)) {
                    buildUpon.appendQueryParameter(str2, parameterToString(obj2).toString());
                } else if (this.httpMethod == HttpMethod.GET) {
                    throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", obj2.getClass().getSimpleName()));
                }
            }
            return buildUpon.toString();
        }
        return str;
    }

    private static HttpURLConnection createConnection(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("User-Agent", getUserAgent());
        httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpURLConnection.setChunkedStreamingMode(0);
        return httpURLConnection;
    }

    public static GraphResponse executeAndWait(GraphRequest graphRequest) {
        List<GraphResponse> executeBatchAndWait = executeBatchAndWait(graphRequest);
        if (executeBatchAndWait == null || executeBatchAndWait.size() != 1) {
            throw new FacebookException("invalid state: expected a single response");
        }
        return executeBatchAndWait.get(0);
    }

    public static List<GraphResponse> executeBatchAndWait(GraphRequestBatch graphRequestBatch) {
        Validate.notEmptyAndContainsNoNulls(graphRequestBatch, "requests");
        HttpURLConnection httpURLConnection = null;
        try {
            return executeConnectionAndWait(toHttpConnection(graphRequestBatch), graphRequestBatch);
        } catch (Exception e) {
            List<GraphResponse> constructErrorResponses = GraphResponse.constructErrorResponses(graphRequestBatch.getRequests(), null, new FacebookException(e));
            runCallbacks(graphRequestBatch, constructErrorResponses);
            httpURLConnection = null;
            return constructErrorResponses;
        } finally {
            Utility.disconnectQuietly(httpURLConnection);
        }
    }

    public static List<GraphResponse> executeBatchAndWait(Collection<GraphRequest> collection) {
        return executeBatchAndWait(new GraphRequestBatch(collection));
    }

    public static List<GraphResponse> executeBatchAndWait(GraphRequest... graphRequestArr) {
        Validate.notNull(graphRequestArr, "requests");
        return executeBatchAndWait(Arrays.asList(graphRequestArr));
    }

    public static GraphRequestAsyncTask executeBatchAsync(GraphRequestBatch graphRequestBatch) {
        Validate.notEmptyAndContainsNoNulls(graphRequestBatch, "requests");
        GraphRequestAsyncTask graphRequestAsyncTask = new GraphRequestAsyncTask(graphRequestBatch);
        graphRequestAsyncTask.executeOnExecutor(FacebookSdk.getExecutor(), new Void[0]);
        return graphRequestAsyncTask;
    }

    public static GraphRequestAsyncTask executeBatchAsync(Collection<GraphRequest> collection) {
        return executeBatchAsync(new GraphRequestBatch(collection));
    }

    public static GraphRequestAsyncTask executeBatchAsync(GraphRequest... graphRequestArr) {
        Validate.notNull(graphRequestArr, "requests");
        return executeBatchAsync(Arrays.asList(graphRequestArr));
    }

    public static List<GraphResponse> executeConnectionAndWait(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        List<GraphResponse> fromHttpConnection = GraphResponse.fromHttpConnection(httpURLConnection, graphRequestBatch);
        Utility.disconnectQuietly(httpURLConnection);
        int size = graphRequestBatch.size();
        if (size == fromHttpConnection.size()) {
            runCallbacks(graphRequestBatch, fromHttpConnection);
            AccessTokenManager.getInstance().extendAccessTokenIfNeeded();
            return fromHttpConnection;
        }
        throw new FacebookException(String.format(Locale.US, "Received %d responses while expecting %d", Integer.valueOf(fromHttpConnection.size()), Integer.valueOf(size)));
    }

    public static List<GraphResponse> executeConnectionAndWait(HttpURLConnection httpURLConnection, Collection<GraphRequest> collection) {
        return executeConnectionAndWait(httpURLConnection, new GraphRequestBatch(collection));
    }

    public static GraphRequestAsyncTask executeConnectionAsync(Handler handler, HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        Validate.notNull(httpURLConnection, "connection");
        GraphRequestAsyncTask graphRequestAsyncTask = new GraphRequestAsyncTask(httpURLConnection, graphRequestBatch);
        graphRequestBatch.setCallbackHandler(handler);
        graphRequestAsyncTask.executeOnExecutor(FacebookSdk.getExecutor(), new Void[0]);
        return graphRequestAsyncTask;
    }

    public static GraphRequestAsyncTask executeConnectionAsync(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        return executeConnectionAsync(null, httpURLConnection, graphRequestBatch);
    }

    private static String getBatchAppId(GraphRequestBatch graphRequestBatch) {
        String applicationId;
        if (!Utility.isNullOrEmpty(graphRequestBatch.getBatchApplicationId())) {
            return graphRequestBatch.getBatchApplicationId();
        }
        Iterator<GraphRequest> it = graphRequestBatch.iterator();
        while (it.hasNext()) {
            AccessToken accessToken = it.next().accessToken;
            if (accessToken != null && (applicationId = accessToken.getApplicationId()) != null) {
                return applicationId;
            }
        }
        return !Utility.isNullOrEmpty(defaultBatchApplicationId) ? defaultBatchApplicationId : FacebookSdk.getApplicationId();
    }

    public static final String getDefaultBatchApplicationId() {
        return defaultBatchApplicationId;
    }

    private static String getDefaultPhotoPathIfNull(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "me/photos";
        }
        return str2;
    }

    private String getGraphPathWithVersion() {
        return versionPattern.matcher(this.graphPath).matches() ? this.graphPath : String.format(GRAPH_PATH_FORMAT, this.version, this.graphPath);
    }

    private static String getMimeContentType() {
        return String.format("multipart/form-data; boundary=%s", MIME_BOUNDARY);
    }

    private static String getUserAgent() {
        if (userAgent == null) {
            userAgent = String.format("%s.%s", USER_AGENT_BASE, FacebookSdkVersion.BUILD);
            String customUserAgent = InternalSettings.getCustomUserAgent();
            if (!Utility.isNullOrEmpty(customUserAgent)) {
                userAgent = String.format(Locale.ROOT, GRAPH_PATH_FORMAT, userAgent, customUserAgent);
            }
        }
        return userAgent;
    }

    private static boolean hasOnProgressCallbacks(GraphRequestBatch graphRequestBatch) {
        for (GraphRequestBatch.Callback callback : graphRequestBatch.getCallbacks()) {
            if (callback instanceof GraphRequestBatch.OnProgressCallback) {
                return true;
            }
        }
        Iterator<GraphRequest> it = graphRequestBatch.iterator();
        while (it.hasNext()) {
            if (it.next().getCallback() instanceof OnProgressCallback) {
                return true;
            }
        }
        return false;
    }

    private static boolean isGzipCompressible(GraphRequestBatch graphRequestBatch) {
        Iterator<GraphRequest> it = graphRequestBatch.iterator();
        while (it.hasNext()) {
            GraphRequest next = it.next();
            for (String str : next.parameters.keySet()) {
                if (isSupportedAttachmentType(next.parameters.get(str))) {
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean isMeRequest(String str) {
        Matcher matcher = versionPattern.matcher(str);
        if (matcher.matches()) {
            str = matcher.group(1);
        }
        return str.startsWith("me/") || str.startsWith("/me/");
    }

    private static boolean isSupportedAttachmentType(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
    }

    public static boolean isSupportedParameterType(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    public static GraphRequest newCustomAudienceThirdPartyIdRequest(AccessToken accessToken, Context context, Callback callback) {
        return newCustomAudienceThirdPartyIdRequest(accessToken, context, null, callback);
    }

    public static GraphRequest newCustomAudienceThirdPartyIdRequest(AccessToken accessToken, Context context, String str, Callback callback) {
        String str2 = str;
        if (str == null) {
            str2 = str;
            if (accessToken != null) {
                str2 = accessToken.getApplicationId();
            }
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = Utility.getMetadataApplicationId(context);
        }
        if (str3 != null) {
            String str4 = str3 + "/custom_audience_third_party_id";
            AttributionIdentifiers attributionIdentifiers = AttributionIdentifiers.getAttributionIdentifiers(context);
            Bundle bundle = new Bundle();
            if (accessToken == null) {
                if (attributionIdentifiers == null) {
                    throw new FacebookException("There is no access token and attribution identifiers could not be retrieved");
                }
                String attributionId = attributionIdentifiers.getAttributionId() != null ? attributionIdentifiers.getAttributionId() : attributionIdentifiers.getAndroidAdvertiserId();
                if (attributionIdentifiers.getAttributionId() != null) {
                    bundle.putString(POBCommonConstants.UDID_PARAM, attributionId);
                }
            }
            if (FacebookSdk.getLimitEventAndDataUsage(context) || (attributionIdentifiers != null && attributionIdentifiers.isTrackingLimited())) {
                bundle.putString("limit_event_usage", "1");
            }
            return new GraphRequest(accessToken, str4, bundle, HttpMethod.GET, callback);
        }
        throw new FacebookException("Facebook App ID cannot be determined");
    }

    public static GraphRequest newDeleteObjectRequest(AccessToken accessToken, String str, Callback callback) {
        return new GraphRequest(accessToken, str, null, HttpMethod.DELETE, callback);
    }

    public static GraphRequest newGraphPathRequest(AccessToken accessToken, String str, Callback callback) {
        return new GraphRequest(accessToken, str, null, null, callback);
    }

    public static GraphRequest newMeRequest(AccessToken accessToken, final GraphJSONObjectCallback graphJSONObjectCallback) {
        return new GraphRequest(accessToken, f86ME, null, null, new Callback() { // from class: com.facebook.GraphRequest.1
            @Override // com.facebook.GraphRequest.Callback
            public void onCompleted(GraphResponse graphResponse) {
                GraphJSONObjectCallback graphJSONObjectCallback2 = graphJSONObjectCallback;
                if (graphJSONObjectCallback2 != null) {
                    graphJSONObjectCallback2.onCompleted(graphResponse.getJSONObject(), graphResponse);
                }
            }
        });
    }

    public static GraphRequest newMyFriendsRequest(AccessToken accessToken, final GraphJSONArrayCallback graphJSONArrayCallback) {
        return new GraphRequest(accessToken, MY_FRIENDS, null, null, new Callback() { // from class: com.facebook.GraphRequest.2
            @Override // com.facebook.GraphRequest.Callback
            public void onCompleted(GraphResponse graphResponse) {
                if (graphJSONArrayCallback != null) {
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    graphJSONArrayCallback.onCompleted(jSONObject != null ? jSONObject.optJSONArray("data") : null, graphResponse);
                }
            }
        });
    }

    public static GraphRequest newPlacesSearchRequest(AccessToken accessToken, Location location, int i, int i2, String str, final GraphJSONArrayCallback graphJSONArrayCallback) {
        if (location != null || !Utility.isNullOrEmpty(str)) {
            Bundle bundle = new Bundle(5);
            bundle.putString("type", AdvertOrmLiteHelper.FIELD_ADVERT_PLACE);
            bundle.putInt("limit", i2);
            if (location != null) {
                bundle.putString("center", String.format(Locale.US, "%f,%f", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude())));
                bundle.putInt("distance", i);
            }
            if (!Utility.isNullOrEmpty(str)) {
                bundle.putString("q", str);
            }
            return new GraphRequest(accessToken, "search", bundle, HttpMethod.GET, new Callback() { // from class: com.facebook.GraphRequest.3
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    if (graphJSONArrayCallback != null) {
                        JSONObject jSONObject = graphResponse.getJSONObject();
                        graphJSONArrayCallback.onCompleted(jSONObject != null ? jSONObject.optJSONArray("data") : null, graphResponse);
                    }
                }
            });
        }
        throw new FacebookException("Either location or searchText must be specified.");
    }

    public static GraphRequest newPostRequest(AccessToken accessToken, String str, JSONObject jSONObject, Callback callback) {
        GraphRequest graphRequest = new GraphRequest(accessToken, str, null, HttpMethod.POST, callback);
        graphRequest.setGraphObject(jSONObject);
        return graphRequest;
    }

    public static GraphRequest newUploadPhotoRequest(AccessToken accessToken, String str, Bitmap bitmap, String str2, Bundle bundle, Callback callback) {
        String defaultPhotoPathIfNull = getDefaultPhotoPathIfNull(str);
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("picture", bitmap);
        if (str2 != null && !str2.isEmpty()) {
            bundle2.putString("caption", str2);
        }
        return new GraphRequest(accessToken, defaultPhotoPathIfNull, bundle2, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadPhotoRequest(AccessToken accessToken, String str, Uri uri, String str2, Bundle bundle, Callback callback) throws FileNotFoundException {
        String defaultPhotoPathIfNull = getDefaultPhotoPathIfNull(str);
        if (Utility.isFileUri(uri)) {
            return newUploadPhotoRequest(accessToken, defaultPhotoPathIfNull, new File(uri.getPath()), str2, bundle, callback);
        }
        if (!Utility.isContentUri(uri)) {
            throw new FacebookException("The photo Uri must be either a file:// or content:// Uri");
        }
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("picture", uri);
        if (str2 != null && !str2.isEmpty()) {
            bundle2.putString("caption", str2);
        }
        return new GraphRequest(accessToken, defaultPhotoPathIfNull, bundle2, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadPhotoRequest(AccessToken accessToken, String str, File file, String str2, Bundle bundle, Callback callback) throws FileNotFoundException {
        String defaultPhotoPathIfNull = getDefaultPhotoPathIfNull(str);
        ParcelFileDescriptor open = ParcelFileDescriptor.open(file, 268435456);
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("picture", open);
        if (str2 != null && !str2.isEmpty()) {
            bundle2.putString("caption", str2);
        }
        return new GraphRequest(accessToken, defaultPhotoPathIfNull, bundle2, HttpMethod.POST, callback);
    }

    public static String parameterToString(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number)) {
            return obj.toString();
        }
        if (!(obj instanceof Date)) {
            throw new IllegalArgumentException("Unsupported parameter type.");
        }
        return new SimpleDateFormat(ISO_8601_FORMAT_STRING, Locale.US).format(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processGraphObject(org.json.JSONObject r5, java.lang.String r6, com.facebook.GraphRequest.KeyValueSerializer r7) throws java.io.IOException {
        /*
            r0 = r6
            boolean r0 = isMeRequest(r0)
            if (r0 == 0) goto L2f
            r0 = r6
            java.lang.String r1 = ":"
            int r0 = r0.indexOf(r1)
            r8 = r0
            r0 = r6
            java.lang.String r1 = "?"
            int r0 = r0.indexOf(r1)
            r9 = r0
            r0 = r8
            r1 = 3
            if (r0 <= r1) goto L2f
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L29
            r0 = r8
            r1 = r9
            if (r0 >= r1) goto L2f
        L29:
            r0 = 1
            r9 = r0
            goto L32
        L2f:
            r0 = 0
            r9 = r0
        L32:
            r0 = r5
            java.util.Iterator r0 = r0.keys()
            r10 = r0
        L38:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L78
            r0 = r10
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r6 = r0
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.opt(r1)
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L69
            r0 = r6
            java.lang.String r1 = "image"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L69
            r0 = 1
            r12 = r0
            goto L6c
        L69:
            r0 = 0
            r12 = r0
        L6c:
            r0 = r6
            r1 = r11
            r2 = r7
            r3 = r12
            processGraphObjectProperty(r0, r1, r2, r3)
            goto L38
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.processGraphObject(org.json.JSONObject, java.lang.String, com.facebook.GraphRequest$KeyValueSerializer):void");
    }

    private static void processGraphObjectProperty(String str, Object obj, KeyValueSerializer keyValueSerializer, boolean z) throws IOException {
        Class<?> cls = obj.getClass();
        if (JSONObject.class.isAssignableFrom(cls)) {
            JSONObject jSONObject = (JSONObject) obj;
            if (z) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    processGraphObjectProperty(String.format("%s[%s]", str, next), jSONObject.opt(next), keyValueSerializer, z);
                }
            } else if (jSONObject.has("id")) {
                processGraphObjectProperty(str, jSONObject.optString("id"), keyValueSerializer, z);
            } else if (jSONObject.has("url")) {
                processGraphObjectProperty(str, jSONObject.optString("url"), keyValueSerializer, z);
            } else if (jSONObject.has(NativeProtocol.OPEN_GRAPH_CREATE_OBJECT_KEY)) {
                processGraphObjectProperty(str, jSONObject.toString(), keyValueSerializer, z);
            }
        } else if (JSONArray.class.isAssignableFrom(cls)) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                processGraphObjectProperty(String.format(Locale.ROOT, "%s[%d]", str, Integer.valueOf(i)), jSONArray.opt(i), keyValueSerializer, z);
            }
        } else if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
            keyValueSerializer.writeString(str, obj.toString());
        } else if (Date.class.isAssignableFrom(cls)) {
            keyValueSerializer.writeString(str, new SimpleDateFormat(ISO_8601_FORMAT_STRING, Locale.US).format((Date) obj));
        }
    }

    private static void processRequest(GraphRequestBatch graphRequestBatch, Logger logger, int i, URL url, OutputStream outputStream, boolean z) throws IOException, JSONException {
        Serializer serializer = new Serializer(outputStream, logger, z);
        if (i != 1) {
            String batchAppId = getBatchAppId(graphRequestBatch);
            if (Utility.isNullOrEmpty(batchAppId)) {
                throw new FacebookException("App ID was not specified at the request or Settings.");
            }
            serializer.writeString(BATCH_APP_ID_PARAM, batchAppId);
            HashMap hashMap = new HashMap();
            serializeRequestsAsJSON(serializer, graphRequestBatch, hashMap);
            if (logger != null) {
                logger.append("  Attachments:\n");
            }
            serializeAttachments(hashMap, serializer);
            return;
        }
        GraphRequest graphRequest = graphRequestBatch.get(0);
        HashMap hashMap2 = new HashMap();
        for (String str : graphRequest.parameters.keySet()) {
            Object obj = graphRequest.parameters.get(str);
            if (isSupportedAttachmentType(obj)) {
                hashMap2.put(str, new Attachment(graphRequest, obj));
            }
        }
        if (logger != null) {
            logger.append("  Parameters:\n");
        }
        serializeParameters(graphRequest.parameters, serializer, graphRequest);
        if (logger != null) {
            logger.append("  Attachments:\n");
        }
        serializeAttachments(hashMap2, serializer);
        JSONObject jSONObject = graphRequest.graphObject;
        if (jSONObject == null) {
            return;
        }
        processGraphObject(jSONObject, url.getPath(), serializer);
    }

    static void runCallbacks(final GraphRequestBatch graphRequestBatch, List<GraphResponse> list) {
        int size = graphRequestBatch.size();
        final ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            GraphRequest graphRequest = graphRequestBatch.get(i);
            if (graphRequest.callback != null) {
                arrayList.add(new Pair(graphRequest.callback, list.get(i)));
            }
        }
        if (arrayList.size() > 0) {
            Runnable runnable = new Runnable() { // from class: com.facebook.GraphRequest.5
                @Override // java.lang.Runnable
                public void run() {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            Pair pair = (Pair) it.next();
                            ((Callback) pair.first).onCompleted((GraphResponse) pair.second);
                        }
                        for (GraphRequestBatch.Callback callback : graphRequestBatch.getCallbacks()) {
                            callback.onBatchCompleted(graphRequestBatch);
                        }
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                }
            };
            Handler callbackHandler = graphRequestBatch.getCallbackHandler();
            if (callbackHandler == null) {
                runnable.run();
            } else {
                callbackHandler.post(runnable);
            }
        }
    }

    private static void serializeAttachments(Map<String, Attachment> map, Serializer serializer) throws IOException {
        for (String str : map.keySet()) {
            Attachment attachment = map.get(str);
            if (isSupportedAttachmentType(attachment.getValue())) {
                serializer.writeObject(str, attachment.getValue(), attachment.getRequest());
            }
        }
    }

    private static void serializeParameters(Bundle bundle, Serializer serializer, GraphRequest graphRequest) throws IOException {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (isSupportedParameterType(obj)) {
                serializer.writeObject(str, obj, graphRequest);
            }
        }
    }

    private static void serializeRequestsAsJSON(Serializer serializer, Collection<GraphRequest> collection, Map<String, Attachment> map) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (GraphRequest graphRequest : collection) {
            graphRequest.serializeToBatch(jSONArray, map);
        }
        serializer.writeRequestsAsJson(BATCH_PARAM, jSONArray, collection);
    }

    private void serializeToBatch(JSONArray jSONArray, Map<String, Attachment> map) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        String str = this.batchEntryName;
        if (str != null) {
            jSONObject.put("name", str);
            jSONObject.put(BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM, this.batchEntryOmitResultOnSuccess);
        }
        String str2 = this.batchEntryDependsOn;
        if (str2 != null) {
            jSONObject.put(BATCH_ENTRY_DEPENDS_ON_PARAM, str2);
        }
        String relativeUrlForBatchedRequest = getRelativeUrlForBatchedRequest();
        jSONObject.put(BATCH_RELATIVE_URL_PARAM, relativeUrlForBatchedRequest);
        jSONObject.put("method", this.httpMethod);
        AccessToken accessToken = this.accessToken;
        if (accessToken != null) {
            Logger.registerAccessToken(accessToken.getToken());
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : this.parameters.keySet()) {
            Object obj = this.parameters.get(str3);
            if (isSupportedAttachmentType(obj)) {
                String format = String.format(Locale.ROOT, "%s%d", ATTACHMENT_FILENAME_PREFIX, Integer.valueOf(map.size()));
                arrayList.add(format);
                map.put(format, new Attachment(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put(ATTACHED_FILES_PARAM, TextUtils.join(",", arrayList));
        }
        if (this.graphObject != null) {
            final ArrayList arrayList2 = new ArrayList();
            processGraphObject(this.graphObject, relativeUrlForBatchedRequest, new KeyValueSerializer() { // from class: com.facebook.GraphRequest.6
                @Override // com.facebook.GraphRequest.KeyValueSerializer
                public void writeString(String str4, String str5) throws IOException {
                    arrayList2.add(String.format(Locale.US, "%s=%s", str4, URLEncoder.encode(str5, POBCommonConstants.URL_ENCODING)));
                }
            });
            jSONObject.put("body", TextUtils.join("&", arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0165  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final void serializeToUrlConnection(com.facebook.GraphRequestBatch r7, java.net.HttpURLConnection r8) throws java.io.IOException, org.json.JSONException {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.serializeToUrlConnection(com.facebook.GraphRequestBatch, java.net.HttpURLConnection):void");
    }

    private static void setConnectionContentType(HttpURLConnection httpURLConnection, boolean z) {
        if (!z) {
            httpURLConnection.setRequestProperty("Content-Type", getMimeContentType());
            return;
        }
        httpURLConnection.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
        httpURLConnection.setRequestProperty(CONTENT_ENCODING_HEADER, "gzip");
    }

    public static final void setDefaultBatchApplicationId(String str) {
        defaultBatchApplicationId = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
        if (java.lang.Integer.parseInt(r0[0]) <= 2) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final boolean shouldWarnOnMissingFieldsParam(com.facebook.GraphRequest r3) {
        /*
            r0 = r3
            java.lang.String r0 = r0.getVersion()
            r4 = r0
            r0 = r4
            boolean r0 = com.facebook.internal.Utility.isNullOrEmpty(r0)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L12
            r0 = 1
            return r0
        L12:
            r0 = r4
            r3 = r0
            r0 = r4
            java.lang.String r1 = "v"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L24
            r0 = r4
            r1 = 1
            java.lang.String r0 = r0.substring(r1)
            r3 = r0
        L24:
            r0 = r3
            java.lang.String r1 = "\\."
            java.lang.String[] r0 = r0.split(r1)
            r3 = r0
            r0 = r3
            int r0 = r0.length
            r1 = 2
            if (r0 < r1) goto L3e
            r0 = r6
            r5 = r0
            r0 = r3
            r1 = 0
            r0 = r0[r1]
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 2
            if (r0 > r1) goto L59
        L3e:
            r0 = r3
            r1 = 0
            r0 = r0[r1]
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 2
            if (r0 < r1) goto L57
            r0 = r3
            r1 = 1
            r0 = r0[r1]
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 4
            if (r0 < r1) goto L57
            r0 = r6
            r5 = r0
            goto L59
        L57:
            r0 = 0
            r5 = r0
        L59:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.shouldWarnOnMissingFieldsParam(com.facebook.GraphRequest):boolean");
    }

    public static HttpURLConnection toHttpConnection(GraphRequestBatch graphRequestBatch) {
        Throwable e;
        validateFieldsParamForGetRequests(graphRequestBatch);
        try {
            HttpURLConnection httpURLConnection = null;
            HttpURLConnection httpURLConnection2 = null;
            try {
                HttpURLConnection createConnection = createConnection(graphRequestBatch.size() == 1 ? new URL(graphRequestBatch.get(0).getUrlForSingleRequest()) : new URL(ServerProtocol.getGraphUrlBase()));
                httpURLConnection2 = createConnection;
                httpURLConnection = createConnection;
                serializeToUrlConnection(graphRequestBatch, createConnection);
                return createConnection;
            } catch (IOException e2) {
                e = e2;
                Utility.disconnectQuietly(httpURLConnection);
                throw new FacebookException("could not construct request body", e);
            } catch (JSONException e3) {
                e = e3;
                httpURLConnection = httpURLConnection2;
                Utility.disconnectQuietly(httpURLConnection);
                throw new FacebookException("could not construct request body", e);
            }
        } catch (MalformedURLException e4) {
            throw new FacebookException("could not construct URL for request", e4);
        }
    }

    public static HttpURLConnection toHttpConnection(Collection<GraphRequest> collection) {
        Validate.notEmptyAndContainsNoNulls(collection, "requests");
        return toHttpConnection(new GraphRequestBatch(collection));
    }

    public static HttpURLConnection toHttpConnection(GraphRequest... graphRequestArr) {
        return toHttpConnection(Arrays.asList(graphRequestArr));
    }

    static final void validateFieldsParamForGetRequests(GraphRequestBatch graphRequestBatch) {
        Iterator<GraphRequest> it = graphRequestBatch.iterator();
        while (it.hasNext()) {
            GraphRequest next = it.next();
            if (HttpMethod.GET.equals(next.getHttpMethod()) && shouldWarnOnMissingFieldsParam(next)) {
                Bundle parameters = next.getParameters();
                if (!parameters.containsKey("fields") || Utility.isNullOrEmpty(parameters.getString("fields"))) {
                    Logger.log(LoggingBehavior.DEVELOPER_ERRORS, 5, "Request", "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter.", next.getGraphPath());
                }
            }
        }
    }

    public final GraphResponse executeAndWait() {
        return executeAndWait(this);
    }

    public final GraphRequestAsyncTask executeAsync() {
        return executeBatchAsync(this);
    }

    public final AccessToken getAccessToken() {
        return this.accessToken;
    }

    public final String getBatchEntryDependsOn() {
        return this.batchEntryDependsOn;
    }

    public final String getBatchEntryName() {
        return this.batchEntryName;
    }

    public final boolean getBatchEntryOmitResultOnSuccess() {
        return this.batchEntryOmitResultOnSuccess;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final JSONObject getGraphObject() {
        return this.graphObject;
    }

    public final String getGraphPath() {
        return this.graphPath;
    }

    public final HttpMethod getHttpMethod() {
        return this.httpMethod;
    }

    public final Bundle getParameters() {
        return this.parameters;
    }

    final String getRelativeUrlForBatchedRequest() {
        if (this.overriddenURL == null) {
            String format = String.format(GRAPH_PATH_FORMAT, ServerProtocol.getGraphUrlBase(), getGraphPathWithVersion());
            addCommonParameters();
            Uri parse = Uri.parse(appendParametersToBaseUrl(format, true));
            return String.format("%s?%s", parse.getPath(), parse.getQuery());
        }
        throw new FacebookException("Can't override URL for a batch request");
    }

    public final Object getTag() {
        return this.tag;
    }

    public final String getUrlForSingleRequest() {
        String str;
        String str2 = this.overriddenURL;
        if (str2 != null) {
            return str2.toString();
        }
        String format = String.format(GRAPH_PATH_FORMAT, (getHttpMethod() != HttpMethod.POST || (str = this.graphPath) == null || !str.endsWith(VIDEOS_SUFFIX)) ? ServerProtocol.getGraphUrlBase() : ServerProtocol.getGraphVideoUrlBase(), getGraphPathWithVersion());
        addCommonParameters();
        return appendParametersToBaseUrl(format, false);
    }

    public final String getVersion() {
        return this.version;
    }

    public final void setAccessToken(AccessToken accessToken) {
        this.accessToken = accessToken;
    }

    public final void setBatchEntryDependsOn(String str) {
        this.batchEntryDependsOn = str;
    }

    public final void setBatchEntryName(String str) {
        this.batchEntryName = str;
    }

    public final void setBatchEntryOmitResultOnSuccess(boolean z) {
        this.batchEntryOmitResultOnSuccess = z;
    }

    public final void setCallback(final Callback callback) {
        if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_INFO) || FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            this.callback = new Callback() { // from class: com.facebook.GraphRequest.4
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    JSONObject optJSONObject = jSONObject != null ? jSONObject.optJSONObject(GraphRequest.DEBUG_KEY) : null;
                    JSONArray optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray(GraphRequest.DEBUG_MESSAGES_KEY) : null;
                    if (optJSONArray != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                            String optString = optJSONObject2 != null ? optJSONObject2.optString("message") : null;
                            String optString2 = optJSONObject2 != null ? optJSONObject2.optString("type") : null;
                            String optString3 = optJSONObject2 != null ? optJSONObject2.optString("link") : null;
                            if (optString != null && optString2 != null) {
                                LoggingBehavior loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_INFO;
                                if (optString2.equals(GraphRequest.DEBUG_SEVERITY_WARNING)) {
                                    loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_WARNING;
                                }
                                String str = optString;
                                if (!Utility.isNullOrEmpty(optString3)) {
                                    str = optString + " Link: " + optString3;
                                }
                                Logger.log(loggingBehavior, GraphRequest.TAG, str);
                            }
                        }
                    }
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.onCompleted(graphResponse);
                    }
                }
            };
        } else {
            this.callback = callback;
        }
    }

    public final void setGraphObject(JSONObject jSONObject) {
        this.graphObject = jSONObject;
    }

    public final void setGraphPath(String str) {
        this.graphPath = str;
    }

    public final void setHttpMethod(HttpMethod httpMethod) {
        if (this.overriddenURL == null || httpMethod == HttpMethod.GET) {
            if (httpMethod == null) {
                httpMethod = HttpMethod.GET;
            }
            this.httpMethod = httpMethod;
            return;
        }
        throw new FacebookException("Can't change HTTP method on request with overridden URL.");
    }

    public final void setParameters(Bundle bundle) {
        this.parameters = bundle;
    }

    public final void setSkipClientToken(boolean z) {
        this.skipClientToken = z;
    }

    public final void setTag(Object obj) {
        this.tag = obj;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{Request: ");
        sb.append(" accessToken: ");
        AccessToken accessToken = this.accessToken;
        AccessToken accessToken2 = accessToken;
        if (accessToken == null) {
            accessToken2 = "null";
        }
        sb.append(accessToken2);
        sb.append(", graphPath: ");
        sb.append(this.graphPath);
        sb.append(", graphObject: ");
        sb.append(this.graphObject);
        sb.append(", httpMethod: ");
        sb.append(this.httpMethod);
        sb.append(", parameters: ");
        sb.append(this.parameters);
        sb.append("}");
        return sb.toString();
    }
}
