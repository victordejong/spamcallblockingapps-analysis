.class public Lz9$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz9;->g(Landroid/content/Context;Ly9;Ln8$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lz9$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ly9;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly9;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz9$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lz9$a;->b:Ly9;

    iput p3, p0, Lz9$a;->c:I

    iput-object p4, p0, Lz9$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lz9$g;
    .locals 4

    iget-object v0, p0, Lz9$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lz9$a;->b:Ly9;

    iget v2, p0, Lz9$a;->c:I

    invoke-static {v0, v1, v2}, Lz9;->f(Landroid/content/Context;Ly9;I)Lz9$g;

    move-result-object v0

    iget-object v1, v0, Lz9$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    sget-object v2, Lz9;->a:Lf4;

    iget-object v3, p0, Lz9$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lf4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz9$a;->a()Lz9$g;

    move-result-object v0

    return-object v0
.end method
