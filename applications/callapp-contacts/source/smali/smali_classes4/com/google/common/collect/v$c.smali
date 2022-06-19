.class final Lcom/google/common/collect/v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-object p1, p0, Lcom/google/common/collect/v$c;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/google/common/collect/v$c;->a:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/v;->a([Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v0

    return-object v0
.end method
