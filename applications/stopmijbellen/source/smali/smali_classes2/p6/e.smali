.class public final synthetic Lp6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/f;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lp6/f$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lp6/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lp6/e;->b:Lp6/f$a;

    return-void
.end method


# virtual methods
.method public final b(Lz4/d;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp6/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lp6/e;->b:Lp6/f$a;

    .line 1
    const-class v2, Landroid/content/Context;

    check-cast p1, Lz4/t;

    invoke-virtual {p1, v2}, Lz4/t;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v1, p1}, Lp6/f$a;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v1, Lp6/a;

    invoke-direct {v1, v0, p1}, Lp6/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
