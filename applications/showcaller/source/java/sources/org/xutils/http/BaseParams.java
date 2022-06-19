package org.xutils.http;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.Headers;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xutils.common.util.KeyValue;
import org.xutils.http.body.FileBody;
import org.xutils.http.body.InputStreamBody;
import org.xutils.http.body.MultipartBody;
import org.xutils.http.body.RequestBody;
import org.xutils.http.body.StringBody;
import org.xutils.http.body.UrlEncodedBody;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/BaseParams.class */
public abstract class BaseParams {

    /* renamed from: b */
    private HttpMethod f40656b;

    /* renamed from: c */
    private String f40657c;

    /* renamed from: d */
    private String f40658d;

    /* renamed from: g */
    private RequestBody f40661g;

    /* renamed from: a */
    private String f40655a = "UTF-8";

    /* renamed from: e */
    private boolean f40659e = false;

    /* renamed from: f */
    private boolean f40660f = false;

    /* renamed from: h */
    private final List<Header> f40662h = new ArrayList();

    /* renamed from: i */
    private final List<KeyValue> f40663i = new ArrayList();

    /* renamed from: j */
    private final List<KeyValue> f40664j = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:org/xutils/http/BaseParams$ArrayItem.class */
    public static final class ArrayItem extends KeyValue {
        public ArrayItem(String str, Object obj) {
            super(str, obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/http/BaseParams$BodyItemWrapper.class */
    public final class BodyItemWrapper extends KeyValue {
        public final String contentType;
        public final String fileName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BodyItemWrapper(String str, Object obj, String str2, String str3) {
            super(str, obj);
            BaseParams.this = r5;
            if (TextUtils.isEmpty(str2)) {
                this.contentType = Headers.HEAD_VALUE_CONTENT_TYPE_OCTET_STREAM;
            } else {
                this.contentType = str2;
            }
            this.fileName = str3;
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/http/BaseParams$Header.class */
    public static final class Header extends KeyValue {
        public final boolean setHeader;

        public Header(String str, String str2, boolean z) {
            super(str, str2);
            this.setHeader = z;
        }
    }

    /* renamed from: a */
    private void m218a() {
        synchronized (this) {
            if (this.f40664j.isEmpty()) {
                return;
            }
            if (this.f40661g == null && HttpMethod.permitsRequestBody(this.f40656b)) {
                if (this.f40660f) {
                    try {
                        JSONObject jSONObject = !TextUtils.isEmpty(this.f40657c) ? new JSONObject(this.f40657c) : new JSONObject();
                        m217b(jSONObject, this.f40664j);
                        this.f40657c = jSONObject.toString();
                        this.f40664j.clear();
                    } catch (JSONException e) {
                        throw new IllegalArgumentException(e.getMessage(), e);
                    }
                } else if (!TextUtils.isEmpty(this.f40657c)) {
                    this.f40663i.addAll(this.f40664j);
                    this.f40664j.clear();
                }
                return;
            }
            this.f40663i.addAll(this.f40664j);
            this.f40664j.clear();
        }
    }

    /* renamed from: b */
    private void m217b(JSONObject jSONObject, List<KeyValue> list) {
        JSONArray jSONArray;
        HashSet hashSet = new HashSet(list.size());
        LinkedHashMap linkedHashMap = new LinkedHashMap(list.size());
        for (int i = 0; i < list.size(); i++) {
            KeyValue keyValue = list.get(i);
            String str = keyValue.key;
            if (!TextUtils.isEmpty(str)) {
                if (linkedHashMap.containsKey(str)) {
                    jSONArray = (JSONArray) linkedHashMap.get(str);
                } else {
                    jSONArray = new JSONArray();
                    linkedHashMap.put(str, jSONArray);
                }
                jSONArray.put(C9649a.m198a(keyValue.value));
                if (keyValue instanceof ArrayItem) {
                    hashSet.add(str);
                }
            }
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str2 = (String) entry.getKey();
            JSONArray jSONArray2 = (JSONArray) entry.getValue();
            if (jSONArray2.length() > 1 || hashSet.contains(str2)) {
                jSONObject.put(str2, jSONArray2);
            } else {
                jSONObject.put(str2, jSONArray2.get(0));
            }
        }
    }

    public void addBodyParameter(String str, Object obj) {
        addBodyParameter(str, obj, null, null);
    }

    public void addBodyParameter(String str, Object obj, String str2) {
        addBodyParameter(str, obj, str2, null);
    }

    public void addBodyParameter(String str, Object obj, String str2, String str3) {
        if (!TextUtils.isEmpty(str) || obj != null) {
            if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
                this.f40664j.add(new BodyItemWrapper(str, obj, str2, str3));
            } else if (obj instanceof Iterable) {
                for (Object obj2 : (Iterable) obj) {
                    this.f40664j.add(new ArrayItem(str, obj2));
                }
            } else {
                if (obj instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) obj;
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        this.f40664j.add(new ArrayItem(str, jSONArray.opt(i)));
                    }
                } else if (obj instanceof byte[]) {
                    this.f40664j.add(new KeyValue(str, obj));
                } else if (obj == null || !obj.getClass().isArray()) {
                    this.f40664j.add(new KeyValue(str, obj));
                } else {
                    int length2 = Array.getLength(obj);
                    for (int i2 = 0; i2 < length2; i2++) {
                        this.f40664j.add(new ArrayItem(str, Array.get(obj, i2)));
                    }
                }
            }
        }
    }

    public void addHeader(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f40662h.add(new Header(str, str2, false));
    }

    public void addParameter(String str, Object obj) {
        if (HttpMethod.permitsRequestBody(this.f40656b)) {
            addBodyParameter(str, obj, null, null);
        } else {
            addQueryStringParameter(str, obj);
        }
    }

    public void addQueryStringParameter(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (obj instanceof Iterable) {
            for (Object obj2 : (Iterable) obj) {
                this.f40663i.add(new ArrayItem(str, obj2));
            }
            return;
        }
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                this.f40663i.add(new ArrayItem(str, jSONArray.opt(i)));
            }
        } else if (obj == null || !obj.getClass().isArray()) {
            this.f40663i.add(new KeyValue(str, obj));
        } else {
            int length2 = Array.getLength(obj);
            for (int i2 = 0; i2 < length2; i2++) {
                this.f40663i.add(new ArrayItem(str, Array.get(obj, i2)));
            }
        }
    }

    public void clearParams() {
        this.f40663i.clear();
        this.f40664j.clear();
        this.f40657c = null;
        this.f40658d = null;
        this.f40661g = null;
    }

    public String getBodyContent() {
        m218a();
        return this.f40657c;
    }

    public List<KeyValue> getBodyParams() {
        m218a();
        return new ArrayList(this.f40664j);
    }

    public String getCharset() {
        return this.f40655a;
    }

    public List<Header> getHeaders() {
        return new ArrayList(this.f40662h);
    }

    public HttpMethod getMethod() {
        return this.f40656b;
    }

    public List<KeyValue> getParams(String str) {
        ArrayList arrayList = new ArrayList();
        for (KeyValue keyValue : this.f40663i) {
            if (str != null && str.equals(keyValue.key)) {
                arrayList.add(keyValue);
            }
        }
        for (KeyValue keyValue2 : this.f40664j) {
            if (str == null && keyValue2.key == null) {
                arrayList.add(keyValue2);
            } else if (str != null && str.equals(keyValue2.key)) {
                arrayList.add(keyValue2);
            }
        }
        return arrayList;
    }

    public List<KeyValue> getQueryStringParams() {
        m218a();
        return new ArrayList(this.f40663i);
    }

    public RequestBody getRequestBody() {
        StringBody stringBody;
        m218a();
        RequestBody requestBody = this.f40661g;
        if (requestBody != null) {
            return requestBody;
        }
        if (!TextUtils.isEmpty(this.f40657c)) {
            stringBody = new StringBody(this.f40657c, this.f40655a);
            stringBody.setContentType(this.f40658d);
        } else if (this.f40659e) {
            stringBody = new MultipartBody(this.f40664j, this.f40655a);
            stringBody.setContentType(this.f40658d);
        } else if (this.f40664j.size() == 1) {
            KeyValue keyValue = this.f40664j.get(0);
            String str = keyValue.key;
            Object obj = keyValue.value;
            String str2 = null;
            if (keyValue instanceof BodyItemWrapper) {
                str2 = ((BodyItemWrapper) keyValue).contentType;
            }
            String str3 = str2;
            if (TextUtils.isEmpty(str2)) {
                str3 = this.f40658d;
            }
            if (obj instanceof File) {
                stringBody = new FileBody((File) obj, str3);
            } else if (obj instanceof InputStream) {
                stringBody = new InputStreamBody((InputStream) obj, str3);
            } else if (obj instanceof byte[]) {
                stringBody = new InputStreamBody(new ByteArrayInputStream((byte[]) obj), str3);
            } else if (TextUtils.isEmpty(str)) {
                stringBody = new StringBody(keyValue.getValueStrOrEmpty(), this.f40655a);
                stringBody.setContentType(str3);
            } else {
                stringBody = new UrlEncodedBody(this.f40664j, this.f40655a);
                stringBody.setContentType(str3);
            }
        } else {
            stringBody = new UrlEncodedBody(this.f40664j, this.f40655a);
            stringBody.setContentType(this.f40658d);
        }
        return stringBody;
    }

    public boolean isAsJsonContent() {
        return this.f40660f;
    }

    public boolean isMultipart() {
        return this.f40659e;
    }

    public void removeParameter(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f40657c = null;
            this.f40658d = null;
        } else {
            Iterator<KeyValue> it = this.f40663i.iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().key)) {
                    it.remove();
                }
            }
        }
        Iterator<KeyValue> it2 = this.f40664j.iterator();
        while (it2.hasNext()) {
            KeyValue next = it2.next();
            if (str == null && next.key == null) {
                it2.remove();
            } else if (str != null && str.equals(next.key)) {
                it2.remove();
            }
        }
    }

    public void setAsJsonContent(boolean z) {
        this.f40660f = z;
    }

    public void setBodyContent(String str) {
        this.f40657c = str;
    }

    public void setBodyContentType(String str) {
        this.f40658d = str;
    }

    public void setCharset(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f40655a = str;
        }
    }

    public void setHeader(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Header header = new Header(str, str2, true);
        Iterator<Header> it = this.f40662h.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().key)) {
                it.remove();
            }
        }
        this.f40662h.add(header);
    }

    public void setMethod(HttpMethod httpMethod) {
        this.f40656b = httpMethod;
    }

    public void setMultipart(boolean z) {
        this.f40659e = z;
    }

    public void setRequestBody(RequestBody requestBody) {
        this.f40661g = requestBody;
    }

    public String toJSONString() {
        JSONObject jSONObject = !TextUtils.isEmpty(this.f40657c) ? new JSONObject(this.f40657c) : new JSONObject();
        ArrayList arrayList = new ArrayList(this.f40663i.size() + this.f40664j.size());
        arrayList.addAll(this.f40663i);
        arrayList.addAll(this.f40664j);
        m217b(jSONObject, arrayList);
        return jSONObject.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.f40663i.isEmpty()) {
            for (KeyValue keyValue : this.f40663i) {
                sb.append(keyValue.key);
                sb.append("=");
                sb.append(keyValue.value);
                sb.append("&");
            }
            sb.deleteCharAt(sb.length() - 1);
        }
        if (!TextUtils.isEmpty(this.f40657c)) {
            sb.append("<");
            sb.append(this.f40657c);
            sb.append(">");
        } else if (!this.f40664j.isEmpty()) {
            sb.append("<");
            for (KeyValue keyValue2 : this.f40664j) {
                sb.append(keyValue2.key);
                sb.append("=");
                sb.append(keyValue2.value);
                sb.append("&");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(">");
        }
        return sb.toString();
    }
}
