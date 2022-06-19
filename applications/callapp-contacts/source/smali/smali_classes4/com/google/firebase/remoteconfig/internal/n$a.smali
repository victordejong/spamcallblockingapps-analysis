.class final Lcom/google/firebase/remoteconfig/internal/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/Date;


# direct methods
.method constructor <init>(ILjava/util/Date;)V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p1, p0, Lcom/google/firebase/remoteconfig/internal/n$a;->a:I

    .line 249
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/n$a;->b:Ljava/util/Date;

    return-void
.end method
