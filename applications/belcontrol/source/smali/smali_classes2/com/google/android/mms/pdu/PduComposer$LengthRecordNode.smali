.class public Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthRecordNode"
.end annotation


# instance fields
.field public currentMessage:Ljava/io/ByteArrayOutputStream;

.field public currentPosition:I

.field public next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/mms/pdu/PduComposer$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;-><init>()V

    return-void
.end method
