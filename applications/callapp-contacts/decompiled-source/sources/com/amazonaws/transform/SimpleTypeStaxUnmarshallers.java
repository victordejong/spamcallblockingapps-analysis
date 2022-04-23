package com.amazonaws.transform;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.DateUtils;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeStaxUnmarshallers.class */
public class SimpleTypeStaxUnmarshallers {

    /* renamed from: a  reason: collision with root package name */
    private static Log f6887a = LogFactory.a(SimpleTypeStaxUnmarshallers.class);

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller.class */
    public static class DateStaxUnmarshaller implements Unmarshaller<Date, StaxUnmarshallerContext> {

        /* renamed from: a  reason: collision with root package name */
        private static DateStaxUnmarshaller f6888a;

        public static DateStaxUnmarshaller a() {
            if (f6888a == null) {
                f6888a = new DateStaxUnmarshaller();
            }
            return f6888a;
        }

        public static Date a(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            String a2 = staxUnmarshallerContext.a();
            if (a2 == null) {
                return null;
            }
            try {
                return DateUtils.a(a2);
            } catch (Exception e) {
                Log log = SimpleTypeStaxUnmarshallers.f6887a;
                log.b("Unable to parse date '" + a2 + "':  " + e.getMessage(), e);
                return null;
            }
        }

        @Override // com.amazonaws.transform.Unmarshaller
        public /* synthetic */ Date unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            return a(staxUnmarshallerContext);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller.class */
    public static class IntegerStaxUnmarshaller implements Unmarshaller<Integer, StaxUnmarshallerContext> {

        /* renamed from: a  reason: collision with root package name */
        private static IntegerStaxUnmarshaller f6889a;

        public static IntegerStaxUnmarshaller a() {
            if (f6889a == null) {
                f6889a = new IntegerStaxUnmarshaller();
            }
            return f6889a;
        }

        public static Integer a(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            String a2 = staxUnmarshallerContext.a();
            if (a2 == null) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(a2));
        }

        @Override // com.amazonaws.transform.Unmarshaller
        public /* synthetic */ Integer unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            return a(staxUnmarshallerContext);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller.class */
    public static class StringStaxUnmarshaller implements Unmarshaller<String, StaxUnmarshallerContext> {

        /* renamed from: a  reason: collision with root package name */
        private static StringStaxUnmarshaller f6890a;

        public static StringStaxUnmarshaller a() {
            if (f6890a == null) {
                f6890a = new StringStaxUnmarshaller();
            }
            return f6890a;
        }

        public static String a(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            return staxUnmarshallerContext.a();
        }

        @Override // com.amazonaws.transform.Unmarshaller
        public /* synthetic */ String unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
            return staxUnmarshallerContext.a();
        }
    }
}
