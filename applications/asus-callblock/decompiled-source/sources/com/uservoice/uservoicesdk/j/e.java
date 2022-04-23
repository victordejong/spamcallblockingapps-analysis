package com.uservoice.uservoicesdk.j;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/j/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    Exception f4704a;

    /* renamed from: b  reason: collision with root package name */
    JSONObject f4705b;
    int c;

    public e(int i, JSONObject jSONObject) {
        this.c = i;
        this.f4705b = jSONObject;
    }

    public e(Exception exc) {
        this.f4704a = exc;
    }

    public e(Exception exc, int i, JSONObject jSONObject) {
        this.f4704a = exc;
        this.c = i;
        this.f4705b = jSONObject;
    }

    public final String a() {
        return String.format("%s -- %s", this.f4704a == null ? String.valueOf(this.c) : this.f4704a.getMessage(), this.f4705b);
    }

    public final String b() {
        String str;
        try {
            str = this.f4705b.getJSONObject("errors").getString("type");
        } catch (JSONException e) {
            str = null;
        }
        return str;
    }
}
