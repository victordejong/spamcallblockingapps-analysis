package com.amazonaws.transform;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.DateUtils;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeStaxUnmarshallers.class */
public class SimpleTypeStaxUnmarshallers {

    /* renamed from: a */
    private static Log f12475a = LogFactory.m38584a(SimpleTypeStaxUnmarshallers.class);

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller.class */
    public static class DateStaxUnmarshaller implements Unmarshaller<Date, StaxUnmarshallerContext> {

        /* renamed from: a */
        private static DateStaxUnmarshaller f12476a;

        /* renamed from: a */
        public static DateStaxUnmarshaller m38294a() {
            if (f12476a == null) {
                f12476a = new DateStaxUnmarshaller();
            }
            return f12476a;
        }

        /* renamed from: a */
        public static Date m38293a(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            String m38288a = staxUnmarshallerContext.m38288a();
            if (m38288a == null) {
                return null;
            }
            try {
                return DateUtils.m38255a(m38288a);
            } catch (Exception e) {
                Log log = SimpleTypeStaxUnmarshallers.f12475a;
                log.mo38592b("Unable to parse date '" + m38288a + "':  " + e.getMessage(), e);
                return null;
            }
        }

        @Override // com.amazonaws.transform.Unmarshaller
        public /* synthetic */ Date unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            return m38293a(staxUnmarshallerContext);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller.class */
    public static class IntegerStaxUnmarshaller implements Unmarshaller<Integer, StaxUnmarshallerContext> {

        /* renamed from: a */
        private static IntegerStaxUnmarshaller f12477a;

        /* renamed from: a */
        public static IntegerStaxUnmarshaller m38292a() {
            if (f12477a == null) {
                f12477a = new IntegerStaxUnmarshaller();
            }
            return f12477a;
        }

        /* renamed from: a */
        public static Integer m38291a(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            String m38288a = staxUnmarshallerContext.m38288a();
            if (m38288a == null) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(m38288a));
        }

        @Override // com.amazonaws.transform.Unmarshaller
        public /* synthetic */ Integer unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            return m38291a(staxUnmarshallerContext);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller.class */
    public static class StringStaxUnmarshaller implements Unmarshaller<String, StaxUnmarshallerContext> {

        /* renamed from: a */
        private static StringStaxUnmarshaller f12478a;

        /* renamed from: a */
        public static StringStaxUnmarshaller m38290a() {
            if (f12478a == null) {
                f12478a = new StringStaxUnmarshaller();
            }
            return f12478a;
        }

        /* renamed from: a */
        public static String m38289a(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            return staxUnmarshallerContext.m38288a();
        }

        @Override // com.amazonaws.transform.Unmarshaller
        public /* synthetic */ String unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            return staxUnmarshallerContext.m38288a();
        }
    }
}
