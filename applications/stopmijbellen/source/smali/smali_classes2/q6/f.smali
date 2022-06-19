.class public final synthetic Lq6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lq6/g;


# direct methods
.method public synthetic constructor <init>(Lq6/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq6/f;->a:Lq6/g;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lq6/f;->a:Lq6/g;

    const-string v1, "firebase"

    .line 1
    invoke-virtual {v0, v1}, Lq6/g;->a(Ljava/lang/String;)Lq6/b;

    move-result-object v0

    return-object v0
.end method
