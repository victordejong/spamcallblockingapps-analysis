.class public final Lrb$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lrb$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lrb$c;

    invoke-direct {v0}, Lrb$c;-><init>()V

    :goto_0
    iput-object v0, p0, Lrb$a;->a:Lrb$d;

    goto :goto_1

    :cond_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    new-instance v0, Lrb$b;

    invoke-direct {v0}, Lrb$b;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lrb$d;

    invoke-direct {v0}, Lrb$d;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Lrb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lrb$c;

    invoke-direct {v0, p1}, Lrb$c;-><init>(Lrb;)V

    :goto_0
    iput-object v0, p0, Lrb$a;->a:Lrb$d;

    goto :goto_1

    :cond_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    new-instance v0, Lrb$b;

    invoke-direct {v0, p1}, Lrb$b;-><init>(Lrb;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lrb$d;

    invoke-direct {v0, p1}, Lrb$d;-><init>(Lrb;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lrb;
    .locals 1

    iget-object v0, p0, Lrb$a;->a:Lrb$d;

    invoke-virtual {v0}, Lrb$d;->a()Lrb;

    move-result-object v0

    return-object v0
.end method

.method public b(Lt8;)Lrb$a;
    .locals 1

    iget-object v0, p0, Lrb$a;->a:Lrb$d;

    invoke-virtual {v0, p1}, Lrb$d;->b(Lt8;)V

    return-object p0
.end method

.method public c(Lt8;)Lrb$a;
    .locals 1

    iget-object v0, p0, Lrb$a;->a:Lrb$d;

    invoke-virtual {v0, p1}, Lrb$d;->c(Lt8;)V

    return-object p0
.end method
