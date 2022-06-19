.class public Lk7/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/c;-><init>(Lk7/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk7/c;


# direct methods
.method public constructor <init>(Lk7/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/c$d;->a:Lk7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/c$d;->a:Lk7/c;

    iget-boolean v1, v0, Lk7/c;->n:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lk7/c;->n:Z

    .line 3
    iput-object p1, v0, Lk7/c;->o:Ljava/lang/Exception;

    .line 4
    iget-object v0, v0, Lk7/c;->p:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk7/c$d;->a:Lk7/c;

    iget-object v0, v0, Lk7/c;->s:Ll7/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Ll7/a;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
