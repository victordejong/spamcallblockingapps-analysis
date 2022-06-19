.class public final Lcom/explorestack/protobuf/UnknownFieldSet$Field;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    }
.end annotation


# static fields
.field private static final fieldDefaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet$Field;


# instance fields
.field private fixed32:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fixed64:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation
.end field

.field private lengthDelimited:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private varint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 730
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/UnknownFieldSet$1;)V
    .locals 0

    .line 712
    invoke-direct {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/explorestack/protobuf/UnknownFieldSet$Field;ILcom/explorestack/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeAsMessageSetExtensionTo(ILcom/explorestack/protobuf/Writer;)V

    return-void
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lcom/explorestack/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet$Field;
    .locals 1

    .line 727
    sget-object v0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    return-object v0
.end method

.method private getIdentityArray()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 778
    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    .line 717
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->access$300()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    .line 722
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet$Field;)Lcom/explorestack/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p0

    return-object p0
.end method

.method private writeAsMessageSetExtensionTo(ILcom/explorestack/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    invoke-interface {p2}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_1

    .line 879
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 880
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    .line 886
    invoke-interface {p2, p1, v1}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 765
    :cond_0
    instance-of v0, p1, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 768
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    invoke-direct {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getFixed32List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object v0
.end method

.method public final getFixed64List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object v0
.end method

.method public final getGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object v0
.end method

.method public final getLengthDelimitedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializedSize(I)I
    .locals 4

    .line 820
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 821
    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 824
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 827
    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    .line 830
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    .line 832
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 833
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeGroupSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_4

    :cond_4
    return v1
.end method

.method public final getSerializedSizeAsMessageSetExtension(I)I
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    .line 898
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getVarintList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 773
    invoke-direct {p0}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toByteString(I)Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 789
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getSerializedSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->newCodedBuilder(I)Lcom/explorestack/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->writeTo(ILcom/explorestack/protobuf/CodedOutputStream;)V

    .line 791
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->build()Lcom/explorestack/protobuf/ByteString;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 793
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a ByteString should never fail with an IOException"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final writeAsMessageSetExtensionTo(ILcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    .line 845
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/explorestack/protobuf/ByteString;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeTo(ILcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 801
    invoke-virtual {p2, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 804
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32(II)V

    goto :goto_1

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 807
    invoke-virtual {p2, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    goto :goto_2

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    .line 810
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    goto :goto_3

    .line 812
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 813
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeGroup(ILcom/explorestack/protobuf/MessageLite;)V

    goto :goto_4

    :cond_4
    return-void
.end method

.method final writeTo(ILcom/explorestack/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/explorestack/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    .line 852
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {p2, p1, v0, v1}, Lcom/explorestack/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    .line 853
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {p2, p1, v0, v1}, Lcom/explorestack/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    .line 854
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Lcom/explorestack/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    .line 856
    invoke-interface {p2}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v2, Lcom/explorestack/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v2, :cond_1

    .line 857
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 858
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeStartGroup(I)V

    .line 859
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p2}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/Writer;)V

    .line 860
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeEndGroup(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 864
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeEndGroup(I)V

    .line 865
    iget-object v1, p0, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p2}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/Writer;)V

    .line 866
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeStartGroup(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method
