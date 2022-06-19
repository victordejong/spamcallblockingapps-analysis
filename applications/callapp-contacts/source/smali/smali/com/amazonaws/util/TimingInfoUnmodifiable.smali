.class final Lcom/amazonaws/util/TimingInfoUnmodifiable;
.super Lcom/amazonaws/util/TimingInfo;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Long;JLjava/lang/Long;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final d()Lcom/amazonaws/util/TimingInfo;
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
