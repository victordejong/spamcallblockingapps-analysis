package com.dropbox.core.json;

import com.dropbox.core.util.d;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/json/JsonWriter.class */
public abstract class JsonWriter<T> {
    private static final String DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss'Z'";
    private static final TimeZone UTC = TimeZone.getTimeZone("UTC");
    private static final String[] weekdays = {null, "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
    private static final String[] months = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", null};

    public static String formatDate(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DATE_FORMAT);
        simpleDateFormat.setTimeZone(UTC);
        return simpleDateFormat.format(date);
    }

    private static String zeroPad(String str, int i) {
        while (str.length() < i) {
            str = "0".concat(String.valueOf(str));
        }
        return str;
    }

    public abstract void write(T t, JsonGenerator jsonGenerator) throws IOException;

    public void write(T t, JsonGenerator jsonGenerator, int i) throws IOException {
        write(t, jsonGenerator);
    }

    public final void writeDate(Date date, JsonGenerator jsonGenerator) throws IOException {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(JsonDateReader.UTC);
        gregorianCalendar.setTime(date);
        String num = Integer.toString(gregorianCalendar.get(1));
        String str = months[gregorianCalendar.get(2)];
        String zeroPad = zeroPad(Integer.toString(gregorianCalendar.get(5)), 2);
        String zeroPad2 = zeroPad(Integer.toString(gregorianCalendar.get(11)), 2);
        String zeroPad3 = zeroPad(Integer.toString(gregorianCalendar.get(12)), 2);
        String zeroPad4 = zeroPad(Integer.toString(gregorianCalendar.get(13)), 2);
        String str2 = weekdays[gregorianCalendar.get(7)];
        jsonGenerator.writeString(str2 + ", " + zeroPad + StringUtils.SPACE + str + StringUtils.SPACE + num + StringUtils.SPACE + zeroPad2 + ":" + zeroPad3 + ":" + zeroPad4 + " +0000");
    }

    public final void writeDateIso(Date date, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeString(formatDate(date));
    }

    public void writeFields(T t, JsonGenerator jsonGenerator) throws IOException {
    }

    public final void writeToFile(T t, File file) throws IOException {
        writeToFile((JsonWriter<T>) t, file, true);
    }

    public final void writeToFile(T t, File file, boolean z) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            writeToStream(t, fileOutputStream, z);
        } finally {
            fileOutputStream.close();
        }
    }

    public final void writeToFile(T t, String str) throws IOException {
        writeToFile((JsonWriter<T>) t, str, true);
    }

    public final void writeToFile(T t, String str, boolean z) throws IOException {
        writeToFile((JsonWriter<T>) t, new File(str), z);
    }

    public final void writeToStream(T t, OutputStream outputStream) throws IOException {
        writeToStream(t, outputStream, true);
    }

    public final void writeToStream(T t, OutputStream outputStream, boolean z) throws IOException {
        JsonGenerator createGenerator = JsonReader.jsonFactory.createGenerator(outputStream);
        JsonGenerator jsonGenerator = createGenerator;
        if (z) {
            jsonGenerator = createGenerator.useDefaultPrettyPrinter();
        }
        try {
            write(t, jsonGenerator);
        } finally {
            jsonGenerator.flush();
        }
    }

    public final String writeToString(T t) {
        return writeToString(t, true);
    }

    public final String writeToString(T t, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            JsonGenerator createGenerator = JsonReader.jsonFactory.createGenerator(byteArrayOutputStream);
            JsonGenerator jsonGenerator = createGenerator;
            if (z) {
                jsonGenerator = createGenerator.useDefaultPrettyPrinter();
            }
            write(t, jsonGenerator);
            jsonGenerator.flush();
            return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
        } catch (IOException e) {
            throw d.a("Impossible", (Throwable) e);
        }
    }
}
