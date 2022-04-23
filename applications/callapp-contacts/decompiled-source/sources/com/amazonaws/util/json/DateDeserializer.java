package com.amazonaws.util.json;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/DateDeserializer.class */
public class DateDeserializer implements JsonDeserializer<Date>, JsonSerializer<Date> {
    private final List<String> dateFormats;
    private final SimpleDateFormat mIso8601DateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    private SimpleDateFormat mSimpleDateFormat;

    public DateDeserializer(String[] strArr) {
        this.dateFormats = Arrays.asList(strArr);
    }

    @Override // com.google.gson.JsonDeserializer
    public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
        String asString = jsonElement.getAsString();
        for (String str : this.dateFormats) {
            try {
                Date date = new Date();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
                this.mSimpleDateFormat = simpleDateFormat;
                date.setTime(simpleDateFormat.parse(asString).getTime());
                return date;
            } catch (ParseException e) {
            }
        }
        try {
            return DateFormat.getDateInstance(2).parse(asString);
        } catch (ParseException e2) {
            throw new JsonParseException(e2.getMessage(), e2);
        }
    }

    public JsonElement serialize(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonPrimitive jsonPrimitive;
        synchronized (this.mIso8601DateFormat) {
            jsonPrimitive = new JsonPrimitive(this.mIso8601DateFormat.format(date));
        }
        return jsonPrimitive;
    }
}
