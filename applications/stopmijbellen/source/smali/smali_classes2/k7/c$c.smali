.class public Lk7/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/f;


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
    iput-object p1, p0, Lk7/c$c;->a:Lk7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/c$c;->a:Lk7/c;

    iget-object v0, v0, Lk7/c;->k:Ll7/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ll7/f;->f()V

    :cond_0
    return-void
.end method
