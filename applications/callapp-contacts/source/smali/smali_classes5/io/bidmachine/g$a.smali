.class final Lio/bidmachine/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field escapeNonAscii:Z

.field singleLineMode:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lio/bidmachine/g$a;->singleLineMode:Z

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lio/bidmachine/g$a;->escapeNonAscii:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/g$1;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Lio/bidmachine/g$a;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/g$a;Lcom/explorestack/protobuf/MessageOrBuilder;Lio/bidmachine/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-direct {p0, p1, p2}, Lio/bidmachine/g$a;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Lio/bidmachine/g$b;)V

    return-void
.end method

.method static synthetic access$700(Lio/bidmachine/g$a;Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-direct {p0, p1, p2}, Lio/bidmachine/g$a;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/g$b;)V

    return-void
.end method

.method private print(Lcom/explorestack/protobuf/MessageOrBuilder;Lio/bidmachine/g$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 302
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1, p2}, Lio/bidmachine/g$a;->printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/g$b;)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/bidmachine/g$a;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/g$b;)V

    return-void
.end method

.method private printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 316
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 318
    invoke-direct {p0, p1, v0, p3}, Lio/bidmachine/g$a;->printSingleField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/g$b;)V

    goto :goto_0

    :cond_0
    return-void

    .line 321
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/g$a;->printSingleField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/g$b;)V

    return-void
.end method

.method private printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/g$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    sget-object v0, Lio/bidmachine/g$1;->$SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 456
    :pswitch_0
    check-cast p2, Lcom/explorestack/protobuf/Message;

    invoke-direct {p0, p2, p3}, Lio/bidmachine/g$a;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Lio/bidmachine/g$b;)V

    goto/16 :goto_2

    .line 452
    :pswitch_1
    check-cast p2, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 442
    :pswitch_2
    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 443
    instance-of p1, p2, Lcom/explorestack/protobuf/ByteString;

    if-eqz p1, :cond_0

    .line 444
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 446
    :cond_0
    check-cast p2, [B

    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 449
    :goto_0
    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 434
    :pswitch_3
    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 435
    iget-boolean p1, p0, Lio/bidmachine/g$a;->escapeNonAscii:Z

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    .line 436
    invoke-static {p2}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    check-cast p2, Ljava/lang/String;

    .line 437
    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string v1, "\\n"

    .line 438
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 435
    :goto_1
    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 431
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/explorestack/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 427
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/explorestack/protobuf/TextFormat;->unsignedToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 423
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 420
    :pswitch_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 417
    :pswitch_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 414
    :pswitch_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 409
    :pswitch_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private printSingleField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/g$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    .line 330
    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 335
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "]"

    .line 340
    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 341
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_2

    .line 342
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 344
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 347
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_4

    .line 348
    iget-boolean v0, p0, Lio/bidmachine/g$a;->singleLineMode:Z

    if-eqz v0, :cond_3

    const-string v0, " { "

    .line 349
    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const-string v0, " {\n"

    .line 351
    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {p3}, Lio/bidmachine/g$b;->indent()V

    goto :goto_2

    :cond_4
    const-string v0, ": "

    .line 355
    invoke-virtual {p3, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 358
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v2, "\n"

    if-ne v0, v1, :cond_9

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    instance-of v0, p2, Lcom/explorestack/protobuf/Any;

    const-string v1, "}"

    if-eqz v0, :cond_7

    .line 361
    check-cast p2, Lcom/explorestack/protobuf/Any;

    .line 362
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    .line 363
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 364
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 366
    invoke-static {}, Lio/bidmachine/g;->access$300()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 368
    :try_start_0
    invoke-static {}, Lio/bidmachine/g;->access$400()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 369
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v6

    invoke-static {v6, p1}, Lio/bidmachine/g;->access$500(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 375
    :cond_5
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 376
    invoke-virtual {p3}, Lio/bidmachine/g$b;->indent()V

    .line 377
    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {p3}, Lio/bidmachine/g$b;->outdent()V

    .line 379
    invoke-virtual {p3, v1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {p3, v2}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    .line 383
    :cond_7
    check-cast p2, Lcom/explorestack/protobuf/MessageOrBuilder;

    invoke-static {p2, p1}, Lio/bidmachine/g;->access$500(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    .line 384
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_8

    .line 385
    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {p3}, Lio/bidmachine/g$b;->outdent()V

    .line 387
    invoke-virtual {p3, v1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {p3, v2}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    .line 392
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/g$a;->printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/g$b;)V

    .line 393
    iget-boolean p1, p0, Lio/bidmachine/g$a;->singleLineMode:Z

    if-eqz p1, :cond_a

    const-string p1, " "

    .line 394
    invoke-virtual {p3, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 396
    :cond_a
    invoke-virtual {p3, v2}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private printUnknownField(IILjava/util/List;Lio/bidmachine/g$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "*>;",
            "Lio/bidmachine/g$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 500
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    const-string v1, ": "

    .line 501
    invoke-virtual {p4, v1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 502
    invoke-static {p2, v0, p4}, Lio/bidmachine/g;->access$600(ILjava/lang/Object;Lio/bidmachine/g$b;)V

    .line 503
    iget-boolean v0, p0, Lio/bidmachine/g$a;->singleLineMode:Z

    if-eqz v0, :cond_0

    const-string v0, " "

    goto :goto_1

    :cond_0
    const-string v0, "\n"

    :goto_1
    invoke-virtual {p4, v0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/g$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 464
    check-cast v0, Ljava/util/Map$Entry;

    .line 465
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 466
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    const/4 v3, 0x0

    .line 467
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lio/bidmachine/g$a;->printUnknownField(IILjava/util/List;Lio/bidmachine/g$b;)V

    const/4 v3, 0x5

    .line 468
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getFixed32List()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lio/bidmachine/g$a;->printUnknownField(IILjava/util/List;Lio/bidmachine/g$b;)V

    const/4 v3, 0x1

    .line 469
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getFixed64List()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lio/bidmachine/g$a;->printUnknownField(IILjava/util/List;Lio/bidmachine/g$b;)V

    const/4 v3, 0x2

    .line 470
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lio/bidmachine/g$a;->printUnknownField(IILjava/util/List;Lio/bidmachine/g$b;)V

    .line 471
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getGroupList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 473
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 475
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 476
    iget-boolean v3, p0, Lio/bidmachine/g$a;->singleLineMode:Z

    if-eqz v3, :cond_1

    const-string v3, " { "

    .line 477
    invoke-virtual {p2, v3}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v3, " {\n"

    .line 479
    invoke-virtual {p2, v3}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {p2}, Lio/bidmachine/g$b;->indent()V

    .line 483
    :goto_1
    invoke-direct {p0, v2, p2}, Lio/bidmachine/g$a;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/g$b;)V

    .line 484
    iget-boolean v2, p0, Lio/bidmachine/g$a;->singleLineMode:Z

    if-eqz v2, :cond_2

    const-string v2, "} "

    .line 485
    invoke-virtual {p2, v2}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {p2}, Lio/bidmachine/g$b;->outdent()V

    const-string v2, "}\n"

    .line 488
    invoke-virtual {p2, v2}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setEscapeNonAscii(Z)Lio/bidmachine/g$a;
    .locals 0

    .line 295
    iput-boolean p1, p0, Lio/bidmachine/g$a;->escapeNonAscii:Z

    return-object p0
.end method

.method private setSingleLineMode(Z)Lio/bidmachine/g$a;
    .locals 0

    .line 290
    iput-boolean p1, p0, Lio/bidmachine/g$a;->singleLineMode:Z

    return-object p0
.end method
