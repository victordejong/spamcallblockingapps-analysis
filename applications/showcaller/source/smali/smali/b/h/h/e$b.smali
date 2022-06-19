.class Lb/h/h/e$b;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Lb/h/k/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/h/e;->d(Landroid/content/Context;Lb/h/h/d;ILjava/util/concurrent/Executor;Lb/h/h/a;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/h/k/a<",
        "Lb/h/h/e$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/h/h/a;


# direct methods
.method constructor <init>(Lb/h/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/h/h/e$b;->a:Lb/h/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/h/h/e$e;

    invoke-virtual {p0, p1}, Lb/h/h/e$b;->b(Lb/h/h/e$e;)V

    return-void
.end method

.method public b(Lb/h/h/e$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/h/e$b;->a:Lb/h/h/a;

    invoke-virtual {v0, p1}, Lb/h/h/a;->b(Lb/h/h/e$e;)V

    return-void
.end method
