.class public final synthetic Lpy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkz$b;


# instance fields
.field public final synthetic a:Llz;

.field public final synthetic b:Lkz;


# direct methods
.method public synthetic constructor <init>(Llz;Lkz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy;->a:Llz;

    iput-object p2, p0, Lpy;->b:Lkz;

    return-void
.end method


# virtual methods
.method public final a(Lzy$e;)V
    .locals 2

    iget-object v0, p0, Lpy;->a:Llz;

    iget-object v1, p0, Lpy;->b:Lkz;

    invoke-virtual {v0, v1, p1}, Llz;->e(Lkz;Lzy$e;)V

    return-void
.end method
