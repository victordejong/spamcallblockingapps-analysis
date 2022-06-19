package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.r */
/* loaded from: classes-dex2jar.jar:com/facebook/r.class */
public final class C2198r implements Parcelable {

    /* renamed from: b */
    private final String f6436b;

    /* renamed from: c */
    private final String f6437c;

    /* renamed from: d */
    private final String f6438d;

    /* renamed from: e */
    private final String f6439e;

    /* renamed from: f */
    private final String f6440f;

    /* renamed from: g */
    private final Uri f6441g;

    /* renamed from: a */
    private static final String f6435a = C2198r.class.getSimpleName();
    public static final Parcelable.Creator<C2198r> CREATOR = new Parcelable.Creator<C2198r>() { // from class: com.facebook.r.2
        /* renamed from: a */
        public C2198r createFromParcel(Parcel parcel) {
            return new C2198r(parcel);
        }

        /* renamed from: a */
        public C2198r[] newArray(int i) {
            return new C2198r[i];
        }
    };

    private C2198r(Parcel parcel) {
        this.f6436b = parcel.readString();
        this.f6437c = parcel.readString();
        this.f6438d = parcel.readString();
        this.f6439e = parcel.readString();
        this.f6440f = parcel.readString();
        String readString = parcel.readString();
        this.f6441g = readString == null ? null : Uri.parse(readString);
    }

    public C2198r(String str, String str2, String str3, String str4, String str5, Uri uri) {
        C2084y.m15416a(str, "id");
        this.f6436b = str;
        this.f6437c = str2;
        this.f6438d = str3;
        this.f6439e = str4;
        this.f6440f = str5;
        this.f6441g = uri;
    }

    public C2198r(JSONObject jSONObject) {
        this.f6436b = jSONObject.optString("id", null);
        this.f6437c = jSONObject.optString("first_name", null);
        this.f6438d = jSONObject.optString("middle_name", null);
        this.f6439e = jSONObject.optString("last_name", null);
        this.f6440f = jSONObject.optString("name", null);
        String optString = jSONObject.optString("link_uri", null);
        this.f6441g = optString == null ? null : Uri.parse(optString);
    }

    /* renamed from: a */
    public static C2198r m14971a() {
        return C2202t.m14958a().m14954b();
    }

    /* renamed from: a */
    public static void m14970a(C2198r c2198r) {
        C2202t.m14958a().m14957a(c2198r);
    }

    /* renamed from: b */
    public static void m14969b() {
        C1803a m16259a = C1803a.m16259a();
        if (!C1803a.m16253b()) {
            m14970a(null);
        } else {
            C2079x.m15471a(m16259a.m16250d(), new C2079x.AbstractC2082a() { // from class: com.facebook.r.1
                @Override // com.facebook.internal.C2079x.AbstractC2082a
                /* renamed from: a */
                public void mo14965a(FacebookException facebookException) {
                    Log.e(C2198r.f6435a, "Got unexpected exception: " + facebookException);
                }

                @Override // com.facebook.internal.C2079x.AbstractC2082a
                /* renamed from: a */
                public void mo14964a(JSONObject jSONObject) {
                    String optString = jSONObject.optString("id");
                    if (optString == null) {
                        return;
                    }
                    String optString2 = jSONObject.optString("link");
                    C2198r.m14970a(new C2198r(optString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString("name"), optString2 != null ? Uri.parse(optString2) : null));
                }
            });
        }
    }

    /* renamed from: c */
    public String m14968c() {
        return this.f6440f;
    }

    /* renamed from: d */
    public JSONObject m14967d() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("id", this.f6436b);
            jSONObject2.put("first_name", this.f6437c);
            jSONObject2.put("middle_name", this.f6438d);
            jSONObject2.put("last_name", this.f6439e);
            jSONObject2.put("name", this.f6440f);
            jSONObject = jSONObject2;
            if (this.f6441g != null) {
                jSONObject2.put("link_uri", this.f6441g.toString());
                jSONObject = jSONObject2;
            }
        } catch (JSONException e) {
            jSONObject = null;
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C2198r)) {
                z = false;
            } else {
                C2198r c2198r = (C2198r) obj;
                if (!this.f6436b.equals(c2198r.f6436b) || this.f6437c != null) {
                    if (!this.f6437c.equals(c2198r.f6437c) || this.f6438d != null) {
                        if (!this.f6438d.equals(c2198r.f6438d) || this.f6439e != null) {
                            if (!this.f6439e.equals(c2198r.f6439e) || this.f6440f != null) {
                                if (!this.f6440f.equals(c2198r.f6440f) || this.f6441g != null) {
                                    z = this.f6441g.equals(c2198r.f6441g);
                                } else if (c2198r.f6441g != null) {
                                    z = false;
                                }
                            } else if (c2198r.f6440f != null) {
                                z = false;
                            }
                        } else if (c2198r.f6439e != null) {
                            z = false;
                        }
                    } else if (c2198r.f6438d != null) {
                        z = false;
                    }
                } else if (c2198r.f6437c != null) {
                    z = false;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f6436b.hashCode() + 527;
        int i = hashCode;
        if (this.f6437c != null) {
            i = (hashCode * 31) + this.f6437c.hashCode();
        }
        int i2 = i;
        if (this.f6438d != null) {
            i2 = (i * 31) + this.f6438d.hashCode();
        }
        int i3 = i2;
        if (this.f6439e != null) {
            i3 = (i2 * 31) + this.f6439e.hashCode();
        }
        int i4 = i3;
        if (this.f6440f != null) {
            i4 = (i3 * 31) + this.f6440f.hashCode();
        }
        int i5 = i4;
        if (this.f6441g != null) {
            i5 = (i4 * 31) + this.f6441g.hashCode();
        }
        return i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f6436b);
        parcel.writeString(this.f6437c);
        parcel.writeString(this.f6438d);
        parcel.writeString(this.f6439e);
        parcel.writeString(this.f6440f);
        parcel.writeString(this.f6441g == null ? null : this.f6441g.toString());
    }
}
