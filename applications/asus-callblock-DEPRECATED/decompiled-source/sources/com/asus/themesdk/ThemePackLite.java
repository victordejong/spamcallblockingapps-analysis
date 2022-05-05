package com.asus.themesdk;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.JsonWriter;
import com.asus.updatesdk.BuildConfig;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
/* loaded from: classes-dex2jar.jar:com/asus/themesdk/ThemePackLite.class */
public class ThemePackLite implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    protected final String f3097a;

    /* renamed from: b  reason: collision with root package name */
    protected final b f3098b;
    private static final b c = new b();
    public static final Parcelable.Creator<ThemePackLite> CREATOR = new Parcelable.Creator<ThemePackLite>() { // from class: com.asus.themesdk.ThemePackLite.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ ThemePackLite createFromParcel(Parcel parcel) {
            return a.a(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ ThemePackLite[] newArray(int i) {
            return new ThemePackLite[i];
        }
    };

    /* loaded from: classes-dex2jar.jar:com/asus/themesdk/ThemePackLite$a.class */
    public static final class a {
        private static b a(JsonReader jsonReader) {
            if (jsonReader.peek() == JsonToken.NULL) {
                throw new IllegalStateException("Unexpected null JsonToken while read theme description");
            }
            b bVar = new b();
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                try {
                    String nextName = jsonReader.nextName();
                    if ("mName".equals(nextName) && jsonReader.peek() != JsonToken.NULL) {
                        bVar.f3099a = jsonReader.nextString();
                    } else if ("mAuthor".equals(nextName) && jsonReader.peek() != JsonToken.NULL) {
                        bVar.f3100b = jsonReader.nextString();
                    } else if (!"mDescription".equals(nextName) || jsonReader.peek() == JsonToken.NULL) {
                        jsonReader.skipValue();
                    } else {
                        bVar.c = jsonReader.nextString();
                    }
                } catch (Exception e) {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            return bVar;
        }

        public static ThemePackLite a(String str) {
            JsonReader jsonReader;
            StringReader stringReader;
            JsonReader jsonReader2;
            ThemePackLite themePackLite = null;
            if (!TextUtils.isEmpty(str)) {
                String str2 = BuildConfig.FLAVOR;
                b bVar = ThemePackLite.c;
                try {
                    stringReader = new StringReader(str);
                    try {
                        JsonReader jsonReader3 = new JsonReader(stringReader);
                        try {
                            try {
                                jsonReader3.beginObject();
                                while (jsonReader3.hasNext()) {
                                    try {
                                        String nextName = jsonReader3.nextName();
                                        if ("mPkgName".equals(nextName)) {
                                            if (jsonReader3.peek() == JsonToken.NULL) {
                                                throw new IllegalStateException("Unexpected null JsonToken while read theme-pack package name");
                                                break;
                                            }
                                            str2 = jsonReader3.nextString();
                                        } else if ("mThemeDesc".equals(nextName)) {
                                            bVar = a(jsonReader3);
                                        } else {
                                            jsonReader3.skipValue();
                                        }
                                    } catch (Exception e) {
                                        jsonReader3.skipValue();
                                    }
                                }
                                jsonReader3.endObject();
                                themePackLite = new ThemePackLite(str2, bVar);
                                a(stringReader);
                                b(jsonReader3);
                            } catch (Throwable th) {
                                th = th;
                                jsonReader2 = jsonReader3;
                                a(stringReader);
                                b(jsonReader2);
                                throw th;
                            }
                        } catch (Exception e2) {
                            jsonReader = jsonReader3;
                            a(stringReader);
                            b(jsonReader);
                            themePackLite = null;
                            return themePackLite;
                        }
                    } catch (Exception e3) {
                        jsonReader = null;
                    } catch (Throwable th2) {
                        th = th2;
                        jsonReader2 = null;
                    }
                } catch (Exception e4) {
                    jsonReader = null;
                    stringReader = null;
                } catch (Throwable th3) {
                    th = th3;
                    jsonReader2 = null;
                    stringReader = null;
                }
            }
            return themePackLite;
        }

        public static String a(ThemePackLite themePackLite) {
            StringWriter stringWriter;
            JsonWriter jsonWriter;
            Throwable th;
            StringWriter stringWriter2;
            JsonWriter jsonWriter2;
            String str = null;
            try {
                stringWriter2 = new StringWriter();
                try {
                    JsonWriter jsonWriter3 = new JsonWriter(stringWriter2);
                    try {
                        jsonWriter3.beginObject();
                        jsonWriter3.name("mPkgName").value(themePackLite.f3097a);
                        jsonWriter3.name("mThemeDesc");
                        jsonWriter3.beginObject();
                        jsonWriter3.name("mName").value(themePackLite.f3098b.f3099a);
                        jsonWriter3.name("mAuthor").value(themePackLite.f3098b.f3100b);
                        jsonWriter3.name("mDescription").value(themePackLite.f3098b.c);
                        jsonWriter3.endObject();
                        jsonWriter3.endObject();
                        str = stringWriter2.toString();
                        a(stringWriter2);
                        a(jsonWriter3);
                    } catch (IOException e) {
                        jsonWriter2 = jsonWriter3;
                        a(stringWriter2);
                        a(jsonWriter2);
                        return str;
                    } catch (Throwable th2) {
                        th = th2;
                        stringWriter = stringWriter2;
                        jsonWriter = jsonWriter3;
                        a(stringWriter);
                        a(jsonWriter);
                        throw th;
                    }
                } catch (IOException e2) {
                    jsonWriter2 = null;
                } catch (Throwable th3) {
                    th = th3;
                    jsonWriter = null;
                    stringWriter = stringWriter2;
                }
            } catch (IOException e3) {
                jsonWriter2 = null;
                stringWriter2 = null;
            } catch (Throwable th4) {
                th = th4;
                jsonWriter = null;
                stringWriter = null;
            }
            return str;
        }

        private static void a(JsonWriter jsonWriter) {
            if (jsonWriter != null) {
                try {
                    jsonWriter.close();
                } catch (IOException e) {
                }
            }
        }

        private static void a(Reader reader) {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                }
            }
        }

        private static void a(Writer writer) {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                }
            }
        }

        private static void b(JsonReader jsonReader) {
            if (jsonReader != null) {
                try {
                    jsonReader.close();
                } catch (IOException e) {
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/themesdk/ThemePackLite$b.class */
    public static final class b implements Cloneable, Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        String f3099a = BuildConfig.FLAVOR;

        /* renamed from: b  reason: collision with root package name */
        String f3100b = BuildConfig.FLAVOR;
        String c = BuildConfig.FLAVOR;

        b() {
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(b bVar) {
            b bVar2 = bVar;
            int compareTo = (this.f3099a == null || bVar2.f3099a == null) ? -1 : this.f3099a.compareTo(bVar2.f3099a);
            if (compareTo == 0) {
                int compareTo2 = (this.f3100b == null || bVar2.f3100b == null) ? -1 : this.f3100b.compareTo(bVar2.f3100b);
                compareTo = compareTo2;
                if (compareTo2 == 0) {
                    compareTo = (this.c == null || bVar2.c == null) ? -1 : this.c.compareTo(bVar2.c);
                }
            }
            return compareTo;
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                z = true;
            } else if (obj instanceof b) {
                b bVar = (b) obj;
                z = (this.f3099a == null ? BuildConfig.FLAVOR : this.f3099a).equals(bVar.f3099a == null ? BuildConfig.FLAVOR : bVar.f3099a) && (this.f3100b == null ? BuildConfig.FLAVOR : this.f3100b).equals(bVar.f3100b == null ? BuildConfig.FLAVOR : bVar.f3100b) && (this.c == null ? BuildConfig.FLAVOR : this.c).equals(bVar.c == null ? BuildConfig.FLAVOR : bVar.c);
            } else {
                z = false;
            }
            return z;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2;
            int i = 0;
            synchronized (this) {
                hashCode = this.f3099a == null ? 0 : this.f3099a.hashCode();
                hashCode2 = this.f3100b == null ? 0 : this.f3100b.hashCode();
                if (this.c != null) {
                    i = this.c.hashCode();
                }
            }
            return i + ((hashCode2 + ((hashCode + 527) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.f3099a != null) {
                sb.append("name:");
                sb.append(this.f3099a);
            }
            if (this.f3100b != null) {
                sb.append("author:");
                sb.append(this.f3100b);
            }
            if (this.c != null) {
                sb.append("description:");
                sb.append(this.c);
            }
            return sb.toString();
        }
    }

    public ThemePackLite(String str, b bVar) {
        this.f3097a = str;
        this.f3098b = bVar;
    }

    public Object clone() {
        Object obj;
        try {
            obj = super.clone();
        } catch (CloneNotSupportedException e) {
            obj = null;
        }
        return obj;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f3097a != null) {
            sb.append("theme:");
            sb.append(this.f3097a);
        }
        if (this.f3098b != null) {
            sb.append("theme-desc:");
            sb.append(this.f3098b);
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(a.a(this));
    }
}
