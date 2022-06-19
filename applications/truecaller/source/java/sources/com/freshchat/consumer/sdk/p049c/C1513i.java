package com.freshchat.consumer.sdk.p049c;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import com.freshchat.consumer.sdk.beans.Article;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.beans.Tag;
import com.freshchat.consumer.sdk.p049c.p050a.C1489a;
import com.freshchat.consumer.sdk.p049c.p050a.C1492d;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.i */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/i.class */
public class C1513i extends AbstractC1504b {

    /* renamed from: en */
    public static final Uri f4121en = Uri.parse("sqlite://com.freshchat.consumer.sdk.model/articles");

    /* renamed from: eo */
    private static final String[] f4122eo = new C1489a().m40807cR();

    /* renamed from: ep */
    private static final String[] f4123ep = new C1492d().m40807cR();
    private Context context;

    public C1513i(Context context) {
        super(context);
        this.context = context.getApplicationContext();
    }

    /* renamed from: ac */
    private Cursor m40700ac(String str) {
        return m40789cs().query("articles", f4122eo, "_id=?", new String[]{str}, null, null, null);
    }

    /* renamed from: cL */
    private Cursor m40697cL() {
        return m40789cs().query("articles", f4122eo, null, null, null, null, "position");
    }

    /* renamed from: g */
    private List<Article> m40695g(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        if (AbstractC1504b.m40792b(cursor)) {
            arrayList = m40688j(cursor, m40691i(cursor));
        }
        return arrayList;
    }

    /* renamed from: h */
    private List<Category> m40693h(Cursor cursor, Map<String, Integer> map) {
        ArrayList arrayList = new ArrayList();
        if (AbstractC1504b.m40787d(cursor)) {
            do {
                Category category = new Category();
                category.setId(cursor.getString(map.get("_id").intValue()));
                category.setTitle(cursor.getString(map.get("title").intValue()));
                category.setPosition(cursor.getInt(map.get("position").intValue()));
                category.setIconUrl(cursor.getString(map.get("icon_url").intValue()));
                category.setDescription(cursor.getString(map.get("description").intValue()));
                category.setCategoryAlias(cursor.getString(map.get("category_alias").intValue()));
                arrayList.add(category);
            } while (cursor.moveToNext());
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: h */
    private Map<String, Integer> m40694h(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("_id", Integer.valueOf(cursor.getColumnIndex("_id")));
            hashMap.put("category_alias", C22128a.m8544z1(hashMap, "description", C22128a.m8544z1(hashMap, "icon_url", C22128a.m8544z1(hashMap, "position", C22128a.m8544z1(hashMap, "title", Integer.valueOf(cursor.getColumnIndex("title")), cursor, "position"), cursor, "icon_url"), cursor, "description"), cursor, "category_alias"));
        }
        return hashMap;
    }

    /* renamed from: i */
    private List<String> m40690i(Cursor cursor, Map<String, Integer> map) {
        ArrayList arrayList = new ArrayList();
        if (AbstractC1504b.m40787d(cursor)) {
            do {
                arrayList.add(cursor.getString(map.get("_id").intValue()));
            } while (cursor.moveToNext());
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: i */
    private Map<String, Integer> m40691i(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("_id", Integer.valueOf(cursor.getColumnIndex("_id")));
            hashMap.put("article_alias", C22128a.m8544z1(hashMap, "content", C22128a.m8544z1(hashMap, "title", C22128a.m8544z1(hashMap, "category_id", Integer.valueOf(cursor.getColumnIndex("category_id")), cursor, "title"), cursor, "content"), cursor, "article_alias"));
        }
        return hashMap;
    }

    /* renamed from: j */
    private Cursor m40687j(List<String> list) {
        if (C1716k.isEmpty(list)) {
            return null;
        }
        StringBuilder m8728C = C22128a.m8728C(" SELECT DISTINCT a.*  FROM articles as a  INNER JOIN categories as c  ON (a.category_id = c._id), (SELECT *  FROM tags WHERE ");
        int m39900b = C1716k.m39900b(list);
        Tag.TaggedType taggedType = Tag.TaggedType.CATEGORY;
        Tag.TaggedType taggedType2 = Tag.TaggedType.ARTICLE;
        C22128a.m8666T0(m8728C, C1514j.m40678a(m39900b, taggedType, taggedType2), ") AS matching_tags  WHERE  (  matching_tags.", "tagged_type", " = '");
        m8728C.append(taggedType2.asInt());
        m8728C.append("' AND  matching_tags.");
        m8728C.append("tagged_id");
        m8728C.append(" = a.");
        C22128a.m8666T0(m8728C, "_id", " )  OR  (  matching_tags.", "tagged_type", " = '");
        m8728C.append(taggedType.asInt());
        m8728C.append("' AND  matching_tags.");
        m8728C.append("tagged_id");
        m8728C.append(" = a.");
        C22128a.m8666T0(m8728C, "category_id", " )  ORDER BY c.", "position", ",a.");
        m8728C.append("position");
        return m40789cs().rawQuery(m8728C.toString(), (String[]) list.toArray(new String[0]));
    }

    /* renamed from: j */
    private List<Article> m40688j(Cursor cursor, Map<String, Integer> map) {
        ArrayList arrayList = new ArrayList();
        if (AbstractC1504b.m40787d(cursor)) {
            do {
                arrayList.add(m40684l(cursor, map));
            } while (cursor.moveToNext());
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: k */
    private List<String> m40686k(Cursor cursor, Map<String, Integer> map) {
        ArrayList arrayList = new ArrayList();
        if (AbstractC1504b.m40787d(cursor)) {
            do {
                Article m40684l = m40684l(cursor, map);
                if (m40684l != null) {
                    arrayList.add(m40684l.getId());
                }
            } while (cursor.moveToNext());
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: l */
    private Article m40684l(Cursor cursor, Map<String, Integer> map) {
        Article article;
        if (AbstractC1504b.m40787d(cursor)) {
            String string = cursor.getString(map.get("_id").intValue());
            String string2 = cursor.getString(map.get("category_id").intValue());
            String string3 = cursor.getString(map.get("title").intValue());
            String string4 = cursor.getString(map.get("content").intValue());
            String string5 = cursor.getString(map.get("article_alias").intValue());
            article = new Article();
            article.setId(string);
            article.setCategoryId(string2);
            article.setTitle(string3);
            article.setDescription(string4);
            article.setArticleAlias(string5);
        } else {
            article = null;
        }
        return article;
    }

    /* renamed from: m */
    private Cursor m40682m(List<String> list) {
        if (C1716k.isEmpty(list)) {
            return null;
        }
        StringBuilder m8728C = C22128a.m8728C(" SELECT DISTINCT c.*  FROM categories as c  INNER JOIN articles as a  ON ( c._id = a.category_id), (SELECT DISTINCT tagged_id FROM tags WHERE ");
        C22128a.m8666T0(m8728C, C1514j.m40678a(C1716k.m39900b(list), Tag.TaggedType.CATEGORY), ") AS matching_tags  WHERE matching_tags.", "tagged_id", " = c.");
        return m40789cs().rawQuery(C22128a.m8610j(m8728C, "_id", " ORDER BY c.", "position"), (String[]) list.toArray(new String[0]));
    }

    /* renamed from: n */
    private void m40681n(List<Article> list) {
        SQLiteStatement compileStatement = m40789cs().compileStatement(new C1489a().m40806cS());
        for (Article article : list) {
            compileStatement.clearBindings();
            compileStatement.bindString(1, article.getId());
            compileStatement.bindString(2, article.getCategoryId());
            compileStatement.bindString(3, article.getTitle());
            compileStatement.bindString(4, article.getDescription());
            compileStatement.bindString(5, Integer.toString(article.getPosition()));
            compileStatement.bindString(6, article.getUpdatedAt());
            compileStatement.bindString(7, article.getArticleAlias() == null ? "" : article.getArticleAlias());
            compileStatement.execute();
        }
        AbstractC1504b.m40794a(compileStatement);
    }

    /* renamed from: o */
    private void m40680o(List<Category> list) {
        SQLiteStatement compileStatement = m40789cs().compileStatement(new C1492d().m40806cS());
        for (Category category : list) {
            compileStatement.clearBindings();
            compileStatement.bindString(1, category.getId());
            compileStatement.bindString(2, category.getTitle());
            compileStatement.bindString(3, category.getDescription());
            compileStatement.bindString(4, category.getIconUrl() == null ? "" : category.getIconUrl());
            compileStatement.bindString(5, Integer.toString(category.getPosition()));
            compileStatement.bindString(6, Long.toString(category.getUpdatedAt()));
            compileStatement.bindString(7, category.getCategoryAlias() == null ? "" : category.getCategoryAlias());
            compileStatement.execute();
        }
        AbstractC1504b.m40794a(compileStatement);
    }

    /* renamed from: Y */
    public Category m40703Y(String str) {
        Throwable th;
        Exception e;
        Cursor cursor;
        try {
            try {
            } catch (Throwable th2) {
                th = th2;
                AbstractC1504b.m40791c(null);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            AbstractC1504b.m40791c(null);
            throw th;
        }
        if (C1626as.isEmpty(str)) {
            AbstractC1504b.m40791c(null);
            return null;
        }
        cursor = m40789cs().query("categories", f4123ep, "_id=?", new String[]{str}, null, null, null);
        Cursor cursor2 = cursor;
        try {
            if (AbstractC1504b.m40792b(cursor)) {
                List<Category> m40693h = m40693h(cursor, m40694h(cursor));
                cursor2 = cursor;
                if (C1716k.m39902a(m40693h)) {
                    Category category = m40693h.get(0);
                    AbstractC1504b.m40791c(cursor);
                    return category;
                }
            }
        } catch (Exception e3) {
            e = e3;
            C1723q.m39823a(e);
            cursor2 = cursor;
            AbstractC1504b.m40791c(cursor2);
            return null;
        }
        AbstractC1504b.m40791c(cursor2);
        return null;
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        return null;
    }

    /* renamed from: a */
    public void m40702a(List<Category> list, List<Article> list2, List<Tag> list3) {
        SQLiteDatabase m40789cs = m40789cs();
        m40789cs.beginTransaction();
        try {
            try {
                m40789cs.delete("articles", null, null);
                m40789cs.delete("categories", null, null);
                C1514j c1514j = new C1514j(this.context);
                c1514j.m40677a(Tag.TaggedType.CATEGORY);
                c1514j.m40677a(Tag.TaggedType.ARTICLE);
                if (C1716k.m39902a(list)) {
                    m40680o(list);
                    if (C1716k.m39902a(list2)) {
                        m40681n(list2);
                    }
                    if (C1716k.m39902a(list3)) {
                        c1514j.m40676f(list3);
                    }
                }
                m40789cs.setTransactionSuccessful();
                m40789cs.endTransaction();
            } catch (Exception e) {
                C1723q.m39823a(e);
                throw e;
            }
        } catch (Throwable th) {
            m40789cs.endTransaction();
            throw th;
        }
    }

    /* renamed from: ab */
    public Article m40701ab(String str) {
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        Article article;
        Exception e;
        Cursor cursor3;
        try {
            cursor3 = m40700ac(str);
            cursor = cursor3;
            article = null;
            cursor2 = cursor3;
            try {
                try {
                    if (AbstractC1504b.m40792b(cursor3)) {
                        article = m40684l(cursor3, m40691i(cursor3));
                        cursor2 = cursor3;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor = cursor3;
                    C1723q.m39823a(e);
                    cursor2 = cursor3;
                    article = null;
                    AbstractC1504b.m40791c(cursor2);
                    return article;
                }
            } catch (Throwable th2) {
                th = th2;
                AbstractC1504b.m40791c(cursor);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursor3 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            AbstractC1504b.m40791c(cursor);
            throw th;
        }
        AbstractC1504b.m40791c(cursor2);
        return article;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: cJ */
    public List<Category> m40699cJ() {
        Cursor cursor;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor rawQuery = m40789cs().rawQuery("SELECT * FROM categories WHERE _id IN (SELECT DISTINCT category_id FROM articles) ORDER BY position", null);
                arrayList = arrayList2;
                cursor = rawQuery;
                if (AbstractC1504b.m40792b(rawQuery)) {
                    cursor3 = rawQuery;
                    cursor2 = rawQuery;
                    arrayList = m40693h(rawQuery, m40694h(rawQuery));
                    cursor = rawQuery;
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
                arrayList = arrayList2;
            }
            AbstractC1504b.m40791c(cursor);
            return arrayList;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor3);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.List<com.freshchat.consumer.sdk.beans.Article>] */
    /* renamed from: cK */
    public List<Article> m40698cK() {
        ?? arrayList = new ArrayList();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor m40697cL = m40697cL();
                cursor2 = m40697cL;
                cursor = m40697cL;
                cursor = m40697cL;
                cursor2 = m40695g(m40697cL);
            } catch (Exception e) {
                C1723q.m39823a(e);
                cursor2 = arrayList;
            }
            return cursor2;
        } finally {
            AbstractC1504b.m40791c(cursor2);
        }
    }

    /* renamed from: cM */
    public void m40696cM() {
        if (C1630aw.m40194fI()) {
            this.context.getContentResolver().notifyChange(f4121en, null);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: h */
    public List<String> m40692h(List<String> list) {
        Cursor cursor;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor m40687j = m40687j(list);
                arrayList = arrayList2;
                cursor = m40687j;
                if (AbstractC1504b.m40792b(m40687j)) {
                    cursor3 = m40687j;
                    cursor2 = m40687j;
                    arrayList = m40686k(m40687j, m40691i(m40687j));
                    cursor = m40687j;
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
                arrayList = arrayList2;
            }
            AbstractC1504b.m40791c(cursor);
            return arrayList;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor3);
            throw th;
        }
    }

    /* renamed from: i */
    public List<Article> m40689i(List<String> list) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor m40687j = m40687j(list);
                cursor2 = m40687j;
                cursor = m40687j;
                cursor = m40687j;
                arrayList = m40695g(m40687j);
            } catch (Exception e) {
                cursor2 = cursor;
                C1723q.m39823a(e);
                arrayList = arrayList2;
            }
            return arrayList;
        } finally {
            AbstractC1504b.m40791c(cursor2);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: k */
    public List<String> m40685k(List<String> list) {
        Cursor cursor;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor m40682m = m40682m(list);
                arrayList = arrayList2;
                cursor = m40682m;
                if (AbstractC1504b.m40792b(m40682m)) {
                    cursor3 = m40682m;
                    cursor2 = m40682m;
                    arrayList = m40690i(m40682m, m40694h(m40682m));
                    cursor = m40682m;
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
                arrayList = arrayList2;
            }
            AbstractC1504b.m40791c(cursor);
            return arrayList;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor3);
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: l */
    public List<Category> m40683l(List<String> list) {
        Cursor cursor;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor m40682m = m40682m(list);
                arrayList = arrayList2;
                cursor = m40682m;
                if (AbstractC1504b.m40792b(m40682m)) {
                    cursor3 = m40682m;
                    cursor2 = m40682m;
                    arrayList = m40693h(m40682m, m40694h(m40682m));
                    cursor = m40682m;
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
                arrayList = arrayList2;
            }
            AbstractC1504b.m40791c(cursor);
            return arrayList;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor3);
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: v */
    public List<Article> m40679v(List<String> list) {
        ArrayList arrayList;
        Cursor cursor;
        String m8721D2 = C22128a.m8721D2(" SELECT * FROM articles WHERE category_id IN ( ", C1626as.m40232a("?", ",", C1716k.m39900b(list)), " ) ORDER BY ", "position");
        ArrayList arrayList2 = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                cursor = m40789cs().rawQuery(m8721D2, (String[]) list.toArray(new String[0]));
                cursor3 = cursor;
                cursor2 = cursor;
                arrayList = m40695g(cursor);
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
                arrayList = arrayList2;
            }
            AbstractC1504b.m40791c(cursor);
            return arrayList;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor3);
            throw th;
        }
    }
}
