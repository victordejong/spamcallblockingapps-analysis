package com.allinone.callerid.p162i.p163a.p179j;

import android.os.AsyncTask;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.CommentContent;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p157f.C2625d;
import com.allinone.callerid.p157f.C2629e;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3767h1;
import java.util.List;
/* renamed from: com.allinone.callerid.i.a.j.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/j/a.class */
public class C2868a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.j.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/j/a$a.class */
    public static class AsyncTaskC2869a extends AsyncTask<String, Void, List<CommentContent>> {

        /* renamed from: a */
        private AbstractC2871b f9629a;

        /* renamed from: b */
        private String f9630b;

        AsyncTaskC2869a(String str, AbstractC2871b abstractC2871b) {
            this.f9629a = abstractC2871b;
            this.f9630b = str;
        }

        /* renamed from: a */
        public List<CommentContent> doInBackground(String... strArr) {
            List<CommentContent> m27015b = C2625d.m27016a().m27015b(this.f9630b);
            if (m27015b != null && m27015b.size() > 0) {
                for (int i = 0; i < m27015b.size(); i++) {
                    CommentContent commentContent = m27015b.get(i);
                    commentContent.setType_label(C3767h1.m24292D(EZCallApplication.m26146c(), commentContent.getType_label()));
                    commentContent.setAuthor(EZCallApplication.m26146c().getResources().getString(R$string.you));
                }
            }
            return m27015b;
        }

        /* renamed from: b */
        public void onPostExecute(List<CommentContent> list) {
            super.onPostExecute(list);
            this.f9629a.mo26483a(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.j.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/j/a$b.class */
    public static class AsyncTaskC2870b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC2872c f9631a;

        /* renamed from: b */
        private CommentContent f9632b;

        AsyncTaskC2870b(CommentContent commentContent, AbstractC2872c abstractC2872c) {
            this.f9631a = abstractC2872c;
            this.f9632b = commentContent;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            CommentContent commentContent = this.f9632b;
            if (commentContent != null) {
                if (commentContent.getType_label() != null && !"".equals(this.f9632b.getType_label())) {
                    C2625d.m27016a().m27014c(this.f9632b);
                } else if (this.f9632b.getContent() != null && !"".equals(this.f9632b.getContent())) {
                    C2625d.m27016a().m27014c(this.f9632b);
                }
            }
            C2629e.m27010d().m27003k(this.f9632b.getTel_number());
            return "ok";
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9631a.mo25492a(str);
        }
    }

    /* renamed from: a */
    public static void m26489a(String str, AbstractC2871b abstractC2871b) {
        try {
            new AsyncTaskC2869a(str, abstractC2871b).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26488b(CommentContent commentContent, AbstractC2872c abstractC2872c) {
        try {
            new AsyncTaskC2870b(commentContent, abstractC2872c).executeOnExecutor(C3735e1.m24405a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
