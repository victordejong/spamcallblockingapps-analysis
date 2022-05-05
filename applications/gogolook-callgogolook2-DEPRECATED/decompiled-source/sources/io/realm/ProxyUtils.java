package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import io.realm.internal.OsList;
import io.realm.internal.android.JsonUtils;
import java.io.IOException;
import java.util.Date;
import java.util.Locale;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:io/realm/ProxyUtils.class */
public class ProxyUtils {
    @TargetApi(11)
    public static <E> RealmList<E> createRealmListWithJsonStream(Class<E> cls, JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == null) {
            jsonReader.skipValue();
            return null;
        }
        jsonReader.beginArray();
        RealmList<E> realmList = new RealmList<>();
        if (cls == Boolean.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Boolean.valueOf(jsonReader.nextBoolean()));
                }
            }
        } else if (cls == Float.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Float.valueOf((float) jsonReader.nextDouble()));
                }
            }
        } else if (cls == Double.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Double.valueOf(jsonReader.nextDouble()));
                }
            }
        } else if (cls == String.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(jsonReader.nextString());
                }
            }
        } else if (cls == byte[].class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(JsonUtils.stringToBytes(jsonReader.nextString()));
                }
            }
        } else if (cls == Date.class) {
            while (jsonReader.hasNext()) {
                JsonToken peek = jsonReader.peek();
                if (peek == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else if (peek == JsonToken.NUMBER) {
                    realmList.add(new Date(jsonReader.nextLong()));
                } else {
                    realmList.add(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            }
        } else if (cls == Long.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Long.valueOf(jsonReader.nextLong()));
                }
            }
        } else if (cls == Integer.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Integer.valueOf((int) jsonReader.nextLong()));
                }
            }
        } else if (cls == Short.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Short.valueOf((short) jsonReader.nextLong()));
                }
            }
        } else if (cls == Byte.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Byte.valueOf((byte) jsonReader.nextLong()));
                }
            }
        } else {
            throwWrongElementType(cls);
        }
        jsonReader.endArray();
        return realmList;
    }

    public static <E> void setRealmListWithJsonObject(RealmList<E> realmList, JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject.has(str)) {
            OsList osList = realmList.getOsList();
            if (jSONObject.isNull(str)) {
                osList.removeAll();
                return;
            }
            JSONArray jSONArray = jSONObject.getJSONArray(str);
            osList.removeAll();
            int length = jSONArray.length();
            Class<E> cls = realmList.clazz;
            if (cls == Boolean.class) {
                for (int i = 0; i < length; i++) {
                    if (jSONArray.isNull(i)) {
                        osList.addNull();
                    } else {
                        osList.addBoolean(jSONArray.getBoolean(i));
                    }
                }
            } else if (cls == Float.class) {
                for (int i2 = 0; i2 < length; i2++) {
                    if (jSONArray.isNull(i2)) {
                        osList.addNull();
                    } else {
                        osList.addFloat((float) jSONArray.getDouble(i2));
                    }
                }
            } else if (cls == Double.class) {
                for (int i3 = 0; i3 < length; i3++) {
                    if (jSONArray.isNull(i3)) {
                        osList.addNull();
                    } else {
                        osList.addDouble(jSONArray.getDouble(i3));
                    }
                }
            } else if (cls == String.class) {
                for (int i4 = 0; i4 < length; i4++) {
                    if (jSONArray.isNull(i4)) {
                        osList.addNull();
                    } else {
                        osList.addString(jSONArray.getString(i4));
                    }
                }
            } else if (cls == byte[].class) {
                for (int i5 = 0; i5 < length; i5++) {
                    if (jSONArray.isNull(i5)) {
                        osList.addNull();
                    } else {
                        osList.addBinary(JsonUtils.stringToBytes(jSONArray.getString(i5)));
                    }
                }
            } else if (cls == Date.class) {
                for (int i6 = 0; i6 < length; i6++) {
                    if (jSONArray.isNull(i6)) {
                        osList.addNull();
                    } else {
                        Object obj = jSONArray.get(i6);
                        if (obj instanceof String) {
                            osList.addDate(JsonUtils.stringToDate((String) obj));
                        } else {
                            osList.addDate(new Date(jSONArray.getLong(i6)));
                        }
                    }
                }
            } else {
                int i7 = 0;
                if (cls != Long.class) {
                    i7 = 0;
                    if (cls != Integer.class) {
                        i7 = 0;
                        if (cls != Short.class) {
                            if (cls == Byte.class) {
                                i7 = 0;
                            } else {
                                throwWrongElementType(cls);
                                return;
                            }
                        }
                    }
                }
                while (i7 < length) {
                    if (jSONArray.isNull(i7)) {
                        osList.addNull();
                    } else {
                        osList.addLong(jSONArray.getLong(i7));
                    }
                    i7++;
                }
            }
        }
    }

    public static void throwWrongElementType(@Nullable Class cls) {
        throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Element type '%s' is not handled.", cls));
    }
}
