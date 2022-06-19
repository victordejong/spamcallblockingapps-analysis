.class public final Lcp;
.super Lpo;
.source ""

# interfaces
.implements Lhp$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcp$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final g:Lup;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lls$a;Ldk;Lct;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 9

    invoke-direct {p0}, Lpo;-><init>()V

    new-instance v8, Lup;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lup;-><init>(Landroid/net/Uri;Lls$a;Ldk;Lct;Ljava/lang/String;ILjava/lang/Object;)V

    move-object v0, p0

    iput-object v8, v0, Lcp;->g:Lup;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lls$a;Ldk;Lct;Ljava/lang/String;ILjava/lang/Object;Lcp$a;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcp;-><init>(Landroid/net/Uri;Lls$a;Ldk;Lct;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Lfp;)V
    .locals 1

    iget-object v0, p0, Lcp;->g:Lup;

    invoke-virtual {v0, p1}, Lup;->b(Lfp;)V

    return-void
.end method

.method public e(Lhp$a;Les;J)Lfp;
    .locals 1

    iget-object v0, p0, Lcp;->g:Lup;

    invoke-virtual {v0, p1, p2, p3, p4}, Lup;->e(Lhp$a;Les;J)Lfp;

    move-result-object p1

    return-object p1
.end method

.method public g(Lhp;Lph;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lpo;->l(Lph;Ljava/lang/Object;)V

    return-void
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcp;->g:Lup;

    invoke-virtual {v0}, Lup;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public k(Lht;)V
    .locals 1

    iget-object v0, p0, Lcp;->g:Lup;

    invoke-virtual {v0, p0, p1}, Lpo;->h(Lhp$b;Lht;)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcp;->g:Lup;

    invoke-virtual {v0, p0}, Lpo;->a(Lhp$b;)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Lcp;->g:Lup;

    invoke-virtual {v0}, Lup;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method
