.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter;
.super Lcom/google/gson/j;
.source "SourceFile"

# interfaces
.implements Lproguard/optimize/gson/b;


# instance fields
.field private a:Lcom/google/gson/f;

.field private b:Lproguard/optimize/gson/_OptimizedJsonReader;

.field private c:Lproguard/optimize/gson/_OptimizedJsonWriter;


# direct methods
.method public constructor <init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter;->a:Lcom/google/gson/f;

    .line 54
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter;->b:Lproguard/optimize/gson/_OptimizedJsonReader;

    .line 55
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter;->c:Lproguard/optimize/gson/_OptimizedJsonWriter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    return-object v2

    :cond_0
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter;->a:Lcom/google/gson/f;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter;->b:Lproguard/optimize/gson/_OptimizedJsonReader;

    .line 3000
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3, p1}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v4

    .line 4000
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eq v4, v7, :cond_5

    const/16 v6, 0x1d

    if-eq v4, v6, :cond_3

    const/16 v6, 0x25

    if-eq v4, v6, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v4

    iput v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    if-eqz v5, :cond_4

    const-class v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    invoke-virtual {v1, v4}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    iput-object v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    goto :goto_0

    :cond_4
    iput-object v2, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    const-class v4, Ljava/lang/Long;

    invoke-virtual {v1, v4}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->a:J

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 3000
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    check-cast p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter;->a:Lcom/google/gson/f;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter;->c:Lproguard/optimize/gson/_OptimizedJsonWriter;

    .line 1000
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const/4 v2, 0x1

    .line 2000
    invoke-interface {v1, p1, v2}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iget-wide v3, p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const/16 v2, 0x25

    invoke-interface {v1, p1, v2}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget v2, p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1d

    invoke-interface {v1, p1, v2}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    const-class v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    iget-object p2, p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    invoke-static {v0, v1, p2}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 1000
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
