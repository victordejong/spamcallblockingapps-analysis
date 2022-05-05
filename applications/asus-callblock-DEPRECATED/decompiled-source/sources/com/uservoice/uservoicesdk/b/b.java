package com.uservoice.uservoicesdk.b;

import android.content.Context;
import android.os.AsyncTask;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/b/b.class */
public final class b {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/b/b$a.class */
    public static final class a extends AsyncTask<Void, Void, JSONObject> {

        /* renamed from: a  reason: collision with root package name */
        public AbstractC0136b f4608a;

        /* renamed from: b  reason: collision with root package name */
        private Context f4609b;
        private String c;

        public a(Context context, String str) {
            this.f4609b = context.getApplicationContext();
            this.c = str;
        }

        private JSONObject a() {
            JSONObject jSONObject;
            try {
                jSONObject = new JSONObject(com.uservoice.uservoicesdk.b.a.a(this.f4609b, this.c));
            } catch (IOException e) {
                e.printStackTrace();
                if (this.f4608a != null) {
                    this.f4608a.a(e);
                }
                jSONObject = null;
                return jSONObject;
            } catch (JSONException e2) {
                e2.printStackTrace();
                if (this.f4608a != null) {
                    this.f4608a.a(e2);
                }
                jSONObject = null;
                return jSONObject;
            }
            return jSONObject;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ JSONObject doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(JSONObject jSONObject) {
            JSONObject jSONObject2 = jSONObject;
            if (!isCancelled() && jSONObject2 != null && this.f4608a != null) {
                this.f4608a.a(jSONObject2);
            }
        }
    }

    /* renamed from: com.uservoice.uservoicesdk.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/b/b$b.class */
    public interface AbstractC0136b {
        void a(Exception exc);

        void a(JSONObject jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/b/b$c.class */
    public static final class c extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        private Context f4610a;

        /* renamed from: b  reason: collision with root package name */
        private String f4611b;
        private JSONObject c;

        public c(Context context, String str, JSONObject jSONObject) {
            this.f4610a = context.getApplicationContext();
            this.f4611b = str;
            this.c = jSONObject;
        }

        private Void a() {
            String jSONObject = this.c.toString();
            try {
                Context context = this.f4610a;
                FileWriter fileWriter = new FileWriter(new File(context.getApplicationContext().getCacheDir(), this.f4611b));
                fileWriter.write(jSONObject);
                fileWriter.close();
                return null;
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(Void r2) {
        }
    }
}
