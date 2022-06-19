.class public Lrb$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lrb;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lrb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrb;-><init>(Lrb;)V

    invoke-direct {p0, v0}, Lrb$d;-><init>(Lrb;)V

    return-void
.end method

.method public constructor <init>(Lrb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb$d;->a:Lrb;

    return-void
.end method


# virtual methods
.method public a()Lrb;
    .locals 1

    iget-object v0, p0, Lrb$d;->a:Lrb;

    return-object v0
.end method

.method public b(Lt8;)V
    .locals 0

    return-void
.end method

.method public c(Lt8;)V
    .locals 0

    return-void
.end method
