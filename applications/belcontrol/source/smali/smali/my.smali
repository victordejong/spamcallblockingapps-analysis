.class public final synthetic Lmy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldz$g;


# direct methods
.method public synthetic constructor <init>(Ldz$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmy;->a:Ldz$g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmy;->a:Ldz$g;

    invoke-virtual {v0}, Ldz$g;->d()V

    return-void
.end method
