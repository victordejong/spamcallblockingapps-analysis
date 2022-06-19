.class public final Lcom/google/android/exoplayer2/ExoTimeoutException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string v0, "Undefined timeout."

    goto :goto_0

    :cond_0
    const-string v0, "Detaching surface timed out."

    goto :goto_0

    :cond_1
    const-string v0, "Setting foreground mode timed out."

    goto :goto_0

    :cond_2
    const-string v0, "Player release timed out."

    .line 60
    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    iput p1, p0, Lcom/google/android/exoplayer2/ExoTimeoutException;->a:I

    return-void
.end method
