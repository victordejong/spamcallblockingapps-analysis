package com.uservoice.uservoicesdk.model;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.asus.updatesdk.cdn.CdnUtils;
import com.uservoice.uservoicesdk.b.b;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.j.a;
import com.uservoice.uservoicesdk.j.f;
import com.uservoice.uservoicesdk.j.g;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/Article.class */
public class Article extends d implements Parcelable {
    public static final Parcelable.Creator<Article> CREATOR = new Parcelable.Creator<Article>() { // from class: com.uservoice.uservoicesdk.model.Article.6
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Article createFromParcel(Parcel parcel) {
            return new Article(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Article[] newArray(int i2) {
            return new Article[i2];
        }
    };
    private static AsyncTask i;

    /* renamed from: a  reason: collision with root package name */
    public String f4714a;

    /* renamed from: b  reason: collision with root package name */
    public String f4715b;
    public String c;
    public int d;
    private Date g;
    private Date h;

    public Article() {
    }

    private Article(Parcel parcel) {
        Date date = null;
        this.e = parcel.readInt();
        this.f4714a = parcel.readString();
        this.f4715b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readInt();
        long readLong = parcel.readLong();
        this.g = readLong == -1 ? null : new Date(readLong);
        long readLong2 = parcel.readLong();
        if (readLong2 != -1) {
            date = new Date(readLong2);
        }
        this.h = date;
    }

    /* synthetic */ Article(Parcel parcel, byte b2) {
        this(parcel);
    }

    public static f a(String str, final a<List<d>> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("per_page", "3");
        hashMap.put("query", str);
        com.uservoice.uservoicesdk.a aVar2 = e.a().f4631b;
        if (aVar2 != null) {
            Log.d("NPECHECKING", "5256: session is " + e.a());
            Log.d("NPECHECKING", "5256: config is " + aVar2);
            hashMap.put("forum_id", String.valueOf(aVar2.b()));
            if (aVar2.h != -1) {
                hashMap.put("topic_id", String.valueOf(aVar2.h));
            }
        } else {
            Log.d("NPECHECKING", "5256: session is " + e.a());
            Log.d("NPECHECKING", "5256: config is " + aVar2);
        }
        return a(a("/instant_answers/search.json", new Object[0]), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Article.5
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.c(jSONObject, "instant_answers"));
            }
        });
    }

    public static void a(final int i2, int i3, final a<List<Article>> aVar) {
        b.a aVar2;
        HashMap hashMap = new HashMap();
        hashMap.put(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.SORT, "ordered");
        hashMap.put("per_page", "50");
        hashMap.put("page", String.valueOf(i3));
        final g gVar = new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Article.2
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(com.uservoice.uservoicesdk.j.e eVar) {
            }

            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.a(jSONObject, "articles", Article.class));
            }
        };
        if (i != null) {
            i.cancel(true);
        }
        Context context = e.a().f4630a;
        if (context != null) {
            aVar2 = new b.a(context, String.valueOf(i2));
            aVar2.f4608a = new b.AbstractC0136b() { // from class: com.uservoice.uservoicesdk.b.b.1
                @Override // com.uservoice.uservoicesdk.b.b.AbstractC0136b
                public final void a(Exception exc) {
                    gVar.a(new com.uservoice.uservoicesdk.j.e(exc));
                }

                @Override // com.uservoice.uservoicesdk.b.b.AbstractC0136b
                public final void a(JSONObject jSONObject) {
                    try {
                        gVar.a(jSONObject);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            };
            aVar2.executeOnExecutor(d.f, new Void[0]);
        } else {
            aVar2 = null;
        }
        i = aVar2;
        a(a("/topics/%d/articles.json", Integer.valueOf(i2)), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Article.3
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                if (Article.i != null) {
                    Article.i.cancel(true);
                    AsyncTask unused = Article.i = null;
                }
                aVar.a((a) d.a(jSONObject, "articles", Article.class));
                Context context2 = e.a().f4630a;
                int i4 = i2;
                if (context2 != null) {
                    new b.c(context2, String.valueOf(i4), jSONObject).execute(new Void[0]);
                }
            }
        });
    }

    public static void a(int i2, final a<List<Article>> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.SORT, "ordered");
        hashMap.put("per_page", "50");
        hashMap.put("page", String.valueOf(i2));
        a(a("/articles.json", new Object[0]), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Article.1
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.a(jSONObject, "articles", Article.class));
            }
        });
    }

    public static void b(int i2, final a<Article> aVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("article_id", String.valueOf(i2));
        a(a("/articles/%d.json", Integer.valueOf(i2)), hashMap, new g(aVar) { // from class: com.uservoice.uservoicesdk.model.Article.4
            @Override // com.uservoice.uservoicesdk.j.g
            public final void a(JSONObject jSONObject) {
                aVar.a((a) d.b(jSONObject, "article", Article.class));
            }
        });
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.f4714a = a(jSONObject, "question");
        this.f4715b = jSONObject.isNull("answer_html") ? null : jSONObject.getString("answer_html");
        this.g = b(jSONObject, "updated_at");
        this.h = b(jSONObject, "created_at");
        if (jSONObject.has("normalized_weight")) {
            this.d = jSONObject.getInt("normalized_weight");
        }
        if (!jSONObject.isNull(CdnUtils.NODE_TOPIC)) {
            this.c = jSONObject.getJSONObject(CdnUtils.NODE_TOPIC).getString(ContactDetailCallogActivity.EXTRA_NAME);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        Article article = (Article) obj;
        return article.c() == c() && article.g.equals(this.g);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        long j = -1;
        parcel.writeInt(this.e);
        parcel.writeString(this.f4714a);
        parcel.writeString(this.f4715b);
        parcel.writeString(this.c);
        parcel.writeInt(this.d);
        parcel.writeLong(this.g != null ? this.g.getTime() : -1L);
        if (this.h != null) {
            j = this.h.getTime();
        }
        parcel.writeLong(j);
    }
}
