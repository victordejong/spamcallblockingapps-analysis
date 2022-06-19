package com.callapp.common.model.json;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONDataAndSource.class */
public class JSONDataAndSource<T> extends CallAppJSONObject {
    private static final long serialVersionUID = -7716586721016672418L;
    private T data;
    private int src;

    public JSONDataAndSource() {
    }

    public JSONDataAndSource(int i, T t) {
        this.src = i;
        this.data = t;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONDataAndSource jSONDataAndSource = (JSONDataAndSource) obj;
        if (this.src != jSONDataAndSource.src) {
            return false;
        }
        T t = this.data;
        T t2 = jSONDataAndSource.data;
        return t != null ? t.equals(t2) : t2 == null;
    }

    public T getData() {
        return this.data;
    }

    public int getSrc() {
        return this.src;
    }

    public int hashCode() {
        int i = this.src;
        T t = this.data;
        return (i * 31) + (t != null ? t.hashCode() : 0);
    }

    public void setData(T t) {
        this.data = t;
    }

    public void setSrc(int i) {
        this.src = i;
    }
}
