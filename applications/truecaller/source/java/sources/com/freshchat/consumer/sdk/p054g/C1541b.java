package com.freshchat.consumer.sdk.p054g;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Article;
import com.freshchat.consumer.sdk.p047b.C1468g;
import com.freshchat.consumer.sdk.p049c.C1513i;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.g.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/b.class */
public class C1541b extends AbstractC1543c<Article> {

    /* renamed from: eL */
    private final C1513i f4166eL;

    /* renamed from: eM */
    private List<String> f4167eM;

    /* renamed from: eN */
    private String f4168eN;

    /* renamed from: eO */
    private List<Article> f4169eO;

    /* renamed from: mw */
    private List<String> f4170mw;

    /* renamed from: mx */
    private boolean f4171mx;

    private C1541b(Context context) {
        super(context);
        this.f4166eL = new C1513i(context);
    }

    public C1541b(Context context, String str, boolean z, List<Article> list, boolean z2) {
        this(context);
        this.f4168eN = str;
        this.f4169eO = list;
        this.f4171mx = z2;
    }

    public C1541b(Context context, List<Article> list) {
        this(context);
        this.f4169eO = list;
    }

    public C1541b(Context context, List<Article> list, List<String> list2, List<String> list3, String str, boolean z) {
        this(context, list);
        if (C1716k.m39902a(list2)) {
            this.f4167eM = list2;
        }
        if (C1716k.m39902a(list3)) {
            this.f4170mw = list3;
        }
        this.f4168eN = str;
        this.f4171mx = z;
    }

    /* renamed from: a */
    public ArrayList<Article> m40577a(ArrayList<Article> arrayList) {
        ArrayList<Article> arrayList2 = new ArrayList<>(arrayList);
        Collections.sort(arrayList2, new Comparator<Article>() { // from class: com.freshchat.consumer.sdk.g.b.1
            /* renamed from: a */
            public int compare(Article article, Article article2) {
                return article2.getRank() > article.getRank() ? 1 : article2.getRank() < article.getRank() ? -1 : 0;
            }
        });
        return arrayList2;
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1543c
    /* renamed from: dd */
    public List<Article> mo40564dd() {
        ArrayList<Article> arrayList = new ArrayList<>();
        if (C1716k.m39902a(this.f4169eO)) {
            arrayList.addAll(this.f4169eO);
        } else {
            arrayList = C1716k.m39902a(this.f4170mw) ? this.f4166eL.m40679v(this.f4170mw) : C1716k.m39902a(this.f4167eM) ? this.f4166eL.m40689i(this.f4167eM) : this.f4166eL.m40698cK();
            this.f4169eO.addAll(arrayList);
        }
        if (this.f4168eN != null) {
            arrayList = m40575p(this.f4169eO);
        }
        return arrayList;
    }

    /* renamed from: gE */
    public boolean m40576gE() {
        return this.f4171mx;
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1543c, p1727n3.p1869w.p1871b.C27051b
    public void onReset() {
        super.onReset();
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1543c, p1727n3.p1869w.p1871b.C27051b
    public void onStartLoading() {
        super.onStartLoading();
    }

    /* renamed from: p */
    public ArrayList<Article> m40575p(List<Article> list) {
        int i;
        ArrayList<Article> arrayList = new ArrayList<>();
        String str = this.f4168eN;
        if (str == null || str.trim().length() == 0) {
            arrayList.addAll(list);
            return arrayList;
        }
        String[] split = this.f4168eN.split("\\s+");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new C1468g(this.f4168eN.trim()));
        if (split.length > 1) {
            for (String str2 : split) {
                arrayList2.add(new C1468g(str2));
            }
        }
        for (Article article : list) {
            String description = article.getDescription();
            String title = article.getTitle();
            Iterator it = arrayList2.iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                i2 = i + ((C1468g) it.next()).m40872a(title, description);
            }
            article.setRank(i);
            if (article.getRank() != 0) {
                arrayList.add(article);
            }
        }
        return m40577a(arrayList);
    }
}
