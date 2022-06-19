.class public Lcom/google/android/gms/wearable/ChannelIOException;
.super Ljava/io/IOException;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/google/android/gms/wearable/ChannelIOException;->a:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/wearable/ChannelIOException;->b:I

    return-void
.end method
