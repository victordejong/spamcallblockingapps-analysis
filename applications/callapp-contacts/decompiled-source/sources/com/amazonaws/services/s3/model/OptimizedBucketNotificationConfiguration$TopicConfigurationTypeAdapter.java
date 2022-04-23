package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.model.BucketNotificationConfiguration;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/OptimizedBucketNotificationConfiguration$TopicConfigurationTypeAdapter.class */
public class OptimizedBucketNotificationConfiguration$TopicConfigurationTypeAdapter extends j implements b {
    private f gson;
    private _OptimizedJsonReader optimizedJsonReader;
    private _OptimizedJsonWriter optimizedJsonWriter;

    public OptimizedBucketNotificationConfiguration$TopicConfigurationTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.gson = fVar;
        this.optimizedJsonReader = _optimizedjsonreader;
        this.optimizedJsonWriter = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        BucketNotificationConfiguration.TopicConfiguration topicConfiguration = new BucketNotificationConfiguration.TopicConfiguration();
        topicConfiguration.fromJson$27(this.gson, jsonReader, this.optimizedJsonReader);
        return topicConfiguration;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((BucketNotificationConfiguration.TopicConfiguration) obj).toJson$27(this.gson, jsonWriter, this.optimizedJsonWriter);
        }
    }
}
