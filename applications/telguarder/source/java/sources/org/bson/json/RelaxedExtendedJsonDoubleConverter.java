package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/RelaxedExtendedJsonDoubleConverter.class */
class RelaxedExtendedJsonDoubleConverter implements Converter<Double> {
    private static final Converter<Double> FALLBACK_CONVERTER = new ExtendedJsonDoubleConverter();

    public void convert(Double d, StrictJsonWriter strictJsonWriter) {
        if (d.isNaN() || d.isInfinite()) {
            FALLBACK_CONVERTER.convert(d, strictJsonWriter);
        } else {
            strictJsonWriter.writeNumber(Double.toString(d.doubleValue()));
        }
    }
}
