package gogolook.callgogolook2.gson;

import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/InCallSupportedDevices.class */
public class InCallSupportedDevices {
    @AbstractC10120c("brand")
    @AbstractC10118a
    public List<String> brand = null;
    @AbstractC10120c("model")
    @AbstractC10118a
    public List<String> model = null;
    @AbstractC10120c(InCallSupportedFunctions.KEY_UNSUPPORTED_MODELS)
    @AbstractC10118a
    public List<String> unsupportedModel = null;

    /* renamed from: a */
    public List<String> m28410a() {
        return this.brand;
    }

    /* renamed from: b */
    public List<String> m28409b() {
        return this.model;
    }

    /* renamed from: c */
    public List<String> m28408c() {
        return this.unsupportedModel;
    }

    public String toString() {
        return "InCallSupportedDevices{brand=" + this.brand + ", model=" + this.model + ", unsupportedModel=" + this.unsupportedModel + '}';
    }
}
