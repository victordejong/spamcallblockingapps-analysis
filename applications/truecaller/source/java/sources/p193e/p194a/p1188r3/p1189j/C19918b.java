package p193e.p194a.p1188r3.p1189j;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.a.r3.j.b */
/* loaded from: classes8-dex2jar.jar:e/a/r3/j/b.class */
public final class C19918b {

    /* renamed from: a */
    public static final Map<String, AbstractC19917a> f56362a = new LinkedHashMap();

    /* renamed from: b */
    public static final C19918b f56363b = null;

    /* renamed from: a */
    public static final <Graph extends AbstractC19917a, Dep> Graph m11813a(Context context, Class<Dep> cls, DynamicFeature dynamicFeature) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(cls, "dependenciesClass");
        l.e(dynamicFeature, "dynamicFeature");
        String graphProviderClassName = dynamicFeature.getGraphProviderClassName();
        if (graphProviderClassName != null) {
            Map<String, AbstractC19917a> map = f56362a;
            if (map.containsKey(graphProviderClassName)) {
                AbstractC19917a abstractC19917a = map.get(graphProviderClassName);
                Objects.requireNonNull(abstractC19917a, "null cannot be cast to non-null type Graph");
                return (Graph) abstractC19917a;
            }
            try {
                Object newInstance = Class.forName(graphProviderClassName).newInstance();
                if (newInstance == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.truecaller.dynamicfeaturesupport.loader.DynamicGraphProvider<Graph, Dep>");
                }
                Graph graph = (Graph) ((AbstractC19919c) newInstance).get(C25225a.m3820x0(context.getApplicationContext(), cls));
                map.put(graphProviderClassName, graph);
                return graph;
            } catch (ClassCastException | ClassNotFoundException e) {
                return null;
            }
        }
        return null;
    }
}
