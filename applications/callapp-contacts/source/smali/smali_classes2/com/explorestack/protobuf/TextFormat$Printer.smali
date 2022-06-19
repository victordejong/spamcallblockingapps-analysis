.class public final Lcom/explorestack/protobuf/TextFormat$Printer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Printer"
.end annotation


# static fields
.field private static final DEFAULT:Lcom/explorestack/protobuf/TextFormat$Printer;


# instance fields
.field private final escapeNonAscii:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 288
    new-instance v0, Lcom/explorestack/protobuf/TextFormat$Printer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/TextFormat$Printer;-><init>(Z)V

    sput-object v0, Lcom/explorestack/protobuf/TextFormat$Printer;->DEFAULT:Lcom/explorestack/protobuf/TextFormat$Printer;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-boolean p1, p0, Lcom/explorestack/protobuf/TextFormat$Printer;->escapeNonAscii:Z

    return-void
.end method

.method static synthetic access$000(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method static synthetic access$100()Lcom/explorestack/protobuf/TextFormat$Printer;
    .locals 1

    .line 285
    sget-object v0, Lcom/explorestack/protobuf/TextFormat$Printer;->DEFAULT:Lcom/explorestack/protobuf/TextFormat$Printer;

    return-object v0
.end method

.method private print(Lcom/explorestack/protobuf/MessageOrBuilder;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->printMessage(Lcom/explorestack/protobuf/MessageOrBuilder;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 350
    invoke-direct {p0, p1, v0, p3}, Lcom/explorestack/protobuf/TextFormat$Printer;->printSingleField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    :cond_0
    return-void

    .line 353
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/TextFormat$Printer;->printSingleField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/explorestack/protobuf/TextFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 435
    :pswitch_0
    check-cast p2, Lcom/explorestack/protobuf/Message;

    invoke-direct {p0, p2, p3}, Lcom/explorestack/protobuf/TextFormat$Printer;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    goto/16 :goto_2

    .line 430
    :pswitch_1
    check-cast p2, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 420
    :pswitch_2
    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 421
    instance-of p1, p2, Lcom/explorestack/protobuf/ByteString;

    if-eqz p1, :cond_0

    .line 422
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_0
    check-cast p2, [B

    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 426
    :goto_0
    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 411
    :pswitch_3
    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 412
    iget-boolean p1, p0, Lcom/explorestack/protobuf/TextFormat$Printer;->escapeNonAscii:Z

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    .line 414
    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormatEscaper;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    check-cast p2, Ljava/lang/String;

    .line 415
    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string v1, "\\n"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 412
    :goto_1
    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 407
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/explorestack/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 402
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/explorestack/protobuf/TextFormat;->unsignedToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 397
    :pswitch_6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 393
    :pswitch_7
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 389
    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 385
    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 379
    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

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

.method private printMessage(Lcom/explorestack/protobuf/MessageOrBuilder;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    .line 545
    :cond_0
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private printSingleField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    .line 552
    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 556
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 559
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "]"

    .line 563
    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 565
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_2

    .line 567
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 569
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 573
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_3

    const-string v0, " {"

    .line 574
    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 575
    invoke-virtual {p3}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->eol()V

    .line 576
    invoke-virtual {p3}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->indent()V

    goto :goto_2

    :cond_3
    const-string v0, ": "

    .line 578
    invoke-virtual {p3, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 581
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/TextFormat$Printer;->printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    .line 583
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p1

    sget-object p2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne p1, p2, :cond_4

    .line 584
    invoke-virtual {p3}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->outdent()V

    const-string/jumbo p1, "}"

    .line 585
    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 587
    :cond_4
    invoke-virtual {p3}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->eol()V

    return-void
.end method

.method private static printUnknownField(IILjava/util/List;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "*>;",
            "Lcom/explorestack/protobuf/TextFormat$TextGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 620
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v1, ": "

    .line 621
    invoke-virtual {p3, v1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 622
    invoke-static {p1, v0, p3}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownFieldValue(ILjava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    .line 623
    invoke-virtual {p3}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->eol()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static printUnknownFieldValue(ILjava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-static {p0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    .line 510
    check-cast p1, Ljava/lang/Integer;

    aput-object p1, p0, v1

    const-string p1, "0x%08x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 536
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Bad tag: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 533
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-static {p1, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void

    .line 518
    :cond_2
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p0

    const-string/jumbo v0, "{"

    .line 519
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 520
    invoke-virtual {p2}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->eol()V

    .line 521
    invoke-virtual {p2}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->indent()V

    .line 522
    invoke-static {p0, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    .line 523
    invoke-virtual {p2}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->outdent()V

    const-string/jumbo p0, "}"

    .line 524
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "\""

    .line 527
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 528
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p1}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    new-array p0, v3, [Ljava/lang/Object;

    .line 513
    check-cast p1, Ljava/lang/Long;

    aput-object p1, p0, v1

    const-string p1, "0x%016x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 507
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 593
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 594
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    const/4 v3, 0x0

    .line 595
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    const/4 v3, 0x5

    .line 596
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getFixed32List()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    const/4 v3, 0x1

    .line 597
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getFixed64List()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    const/4 v3, 0x2

    .line 601
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object v4

    .line 598
    invoke-static {v1, v3, v4, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    .line 603
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getGroupList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 604
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v3, " {"

    .line 605
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 606
    invoke-virtual {p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->eol()V

    .line 607
    invoke-virtual {p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->indent()V

    .line 608
    invoke-static {v2, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    .line 609
    invoke-virtual {p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->outdent()V

    const-string/jumbo v2, "}"

    .line 610
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 611
    invoke-virtual {p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->eol()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final escapingNonAscii(Z)Lcom/explorestack/protobuf/TextFormat$Printer;
    .locals 1

    .line 307
    new-instance v0, Lcom/explorestack/protobuf/TextFormat$Printer;

    invoke-direct {v0, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;-><init>(Z)V

    return-object v0
.end method

.method public final print(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->access$200(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public final print(Lcom/explorestack/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->access$200(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public final printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-static {p3}, Lcom/explorestack/protobuf/TextFormat;->access$200(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/TextFormat$Printer;->printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public final printFieldToString(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 331
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    invoke-virtual {p0, p1, p2, v0}, Lcom/explorestack/protobuf/TextFormat$Printer;->printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 335
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    invoke-static {p3}, Lcom/explorestack/protobuf/TextFormat;->access$200(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/TextFormat$Printer;->printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public final printToString(Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 1

    .line 443
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/TextFormat$Printer;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final printToString(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 1

    .line 453
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/TextFormat$Printer;->print(Lcom/explorestack/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 457
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final shortDebugString(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 481
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->access$300(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/explorestack/protobuf/TextFormat$Printer;->printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 485
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final shortDebugString(Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 2

    .line 467
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->access$300(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/explorestack/protobuf/TextFormat$Printer;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 471
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final shortDebugString(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 2

    .line 495
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->access$300(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/explorestack/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    .line 497
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 499
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
