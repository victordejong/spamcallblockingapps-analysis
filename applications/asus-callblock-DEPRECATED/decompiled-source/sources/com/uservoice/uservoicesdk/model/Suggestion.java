package com.uservoice.uservoicesdk.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.asus.updatesdk.cdn.CdnUtils;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.j.a;
import com.uservoice.uservoicesdk.j.f;
import com.uservoice.uservoicesdk.j.g;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/Suggestion.class */
public class Suggestion extends d implements Parcelable {
    public static final Parcelable.Creator<Suggestion> CREATOR = new Parcelable.Creator<Suggestion>() { // from class: com.uservoice.uservoicesdk.model.Suggestion.6
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Suggestion createFromParcel(Parcel parcel) {
            return new Suggestion(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Suggestion[] newArray(int i) {
            return new Suggestion[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public String f4724a;

    /* renamed from: b  reason: collision with root package name */
    public String f4725b;
    public String c;
    public String d;
    public String g;
    public String h;
    public String i;
    public String j;
    public Date k;
    public Date l;
    public int m;
    public int n;
    int o;
    public boolean p;
    public int q;
    private Category r;
    private String s;
    private int t;

    public Suggestion() {
    }

    private Suggestion(Parcel parcel) {
        Date date = null;
        this.f4724a = parcel.readString();
        this.f4725b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.j = parcel.readString();
        long readLong = parcel.readLong();
        this.k = readLong == -1 ? null : new Date(readLong);
        long readLong2 = parcel.readLong();
        if (readLong2 != -1) {
            date = new Date(readLong2);
        }
        this.l = date;
        this.r = (Category) parcel.readParcelable(Category.class.getClassLoader());
        this.m = parcel.readInt();
        this.n = parcel.readInt();
        this.o = parcel.readInt();
        this.p = parcel.readByte() != 0;
        this.s = parcel.readString();
        this.q = parcel.readInt();
        this.t = parcel.readInt();
    }

    /* synthetic */ Suggestion(Parcel parcel, byte b2) {
        this(parcel);
    }

    public static f a(h hVar, String str, final a<List<Suggestion>> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("query", str);
        return a(a("/forums/%d/suggestions/search.json", Integer.valueOf(hVar.c())), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Suggestion.2
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.a(jSONObject, "suggestions", Suggestion.class));
            }
        });
    }

    public static String a(Context context, String str) {
        int i = 0;
        if (str.toLowerCase().equals("answered")) {
            i = context.getResources().getIdentifier("uf_sdk_suggestion_status_answered", "string", context.getPackageName());
        } else if (str.toLowerCase().equals("under review")) {
            i = context.getResources().getIdentifier("uf_sdk_suggestion_status_under_review", "string", context.getPackageName());
        } else if (str.toLowerCase().equals("planned")) {
            i = context.getResources().getIdentifier("uf_sdk_suggestion_status_planned", "string", context.getPackageName());
        } else if (str.toLowerCase().equals("implemented")) {
            i = context.getResources().getIdentifier("uf_sdk_suggestion_status_implemented", "string", context.getPackageName());
        } else if (str.toLowerCase().equals("completed")) {
            i = context.getResources().getIdentifier("uf_sdk_suggestion_status_completed", "string", context.getPackageName());
        } else if (str.toLowerCase().equals("declined")) {
            i = context.getResources().getIdentifier("uf_sdk_suggestion_status_declined", "string", context.getPackageName());
        }
        if (i > 0) {
            str = context.getString(i);
        }
        return str;
    }

    public static void a(h hVar, int i, final a<List<Suggestion>> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("page", String.valueOf(i));
        hashMap.put("per_page", "20");
        hashMap.put("filter", "public");
        e eVar = e.a().g;
        hashMap.put(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.SORT, eVar.d.equals("new") ? "newest" : eVar.d.equals("hot") ? "hot" : "votes");
        a(a("/forums/%d/suggestions.json", Integer.valueOf(hVar.c())), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Suggestion.1
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.a(jSONObject, "suggestions", Suggestion.class));
            }
        });
    }

    public static void a(h hVar, Category category, String str, String str2, final a<Suggestion> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("subscribe", "true");
        hashMap.put("suggestion[title]", str);
        hashMap.put("suggestion[text]", str2);
        if (category != null) {
            hashMap.put("suggestion[category_id]", String.valueOf(category.c()));
        }
        b(a("/forums/%d/suggestions.json", Integer.valueOf(hVar.c())), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Suggestion.3
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.b(jSONObject, "suggestion", Suggestion.class));
            }
        });
    }

    public final String a() {
        String str;
        if (this.t % 100 <= 10 || this.t % 100 >= 14) {
            switch (this.t % 10) {
                case 1:
                    str = "st";
                    break;
                case 2:
                    str = "nd";
                    break;
                case 3:
                    str = "rd";
                    break;
            }
            return String.valueOf(this.t) + str;
        }
        str = "th";
        return String.valueOf(this.t) + str;
    }

    public final void a(final a<Suggestion> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("subscribe", "true");
        b(a("/forums/%d/suggestions/%d/watch.json", Integer.valueOf(this.o), Integer.valueOf(this.e)), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Suggestion.4
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.VOTE_IDEA, Suggestion.this.c());
                com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.SUBSCRIBE_IDEA, Suggestion.this.c());
                Suggestion.this.a(jSONObject.getJSONObject("suggestion"));
                aVar.a((com.uservoice.uservoicesdk.j.a) Suggestion.this);
            }
        });
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.f4724a = a(jSONObject, AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE);
        this.f4725b = a(jSONObject, "formatted_text");
        this.l = b(jSONObject, "created_at");
        this.o = jSONObject.getJSONObject(CdnUtils.NODE_TOPIC).getJSONObject("forum").getInt("id");
        this.s = jSONObject.getJSONObject(CdnUtils.NODE_TOPIC).getJSONObject("forum").getString(ContactDetailCallogActivity.EXTRA_NAME);
        this.p = jSONObject.has("subscribed") && jSONObject.getBoolean("subscribed");
        if (!jSONObject.isNull("category")) {
            this.r = (Category) b(jSONObject, "category", Category.class);
        }
        this.m = jSONObject.getInt("comments_count");
        this.n = jSONObject.getInt("subscriber_count");
        if (!jSONObject.isNull("creator")) {
            this.g = a(jSONObject.getJSONObject("creator"), ContactDetailCallogActivity.EXTRA_NAME);
        }
        if (!jSONObject.isNull("status")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("status");
            this.c = a(jSONObject2, ContactDetailCallogActivity.EXTRA_NAME);
            this.d = a(jSONObject2, "hex_color");
        }
        if (!jSONObject.isNull("response")) {
            JSONObject jSONObject3 = jSONObject.getJSONObject("response");
            this.h = a(jSONObject3, "formatted_text");
            this.k = b(jSONObject3, "created_at");
            JSONObject jSONObject4 = jSONObject3.getJSONObject("creator");
            this.i = a(jSONObject4, ContactDetailCallogActivity.EXTRA_NAME);
            this.j = a(jSONObject4, "avatar_url");
        }
        if (jSONObject.has("normalized_weight")) {
            this.q = jSONObject.getInt("normalized_weight");
        }
        if (jSONObject.has("rank")) {
            this.t = jSONObject.getInt("rank");
        }
    }

    public final void b(final com.uservoice.uservoicesdk.j.a<Suggestion> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("subscribe", "false");
        b(a("/forums/%d/suggestions/%d/watch.json", Integer.valueOf(this.o), Integer.valueOf(this.e)), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Suggestion.5
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                Suggestion.this.a(jSONObject.getJSONObject("suggestion"));
                aVar.a((com.uservoice.uservoicesdk.j.a) Suggestion.this);
            }
        });
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        long j = -1;
        parcel.writeString(this.f4724a);
        parcel.writeString(this.f4725b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        parcel.writeString(this.j);
        parcel.writeLong(this.k != null ? this.k.getTime() : -1L);
        if (this.l != null) {
            j = this.l.getTime();
        }
        parcel.writeLong(j);
        parcel.writeParcelable(this.r, i);
        parcel.writeInt(this.m);
        parcel.writeInt(this.n);
        parcel.writeInt(this.o);
        parcel.writeByte(this.p ? (byte) 1 : (byte) 0);
        parcel.writeString(this.s);
        parcel.writeInt(this.q);
        parcel.writeInt(this.t);
    }
}
