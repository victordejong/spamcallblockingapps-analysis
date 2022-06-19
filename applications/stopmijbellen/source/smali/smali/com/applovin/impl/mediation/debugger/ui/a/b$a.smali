.class Lcom/applovin/impl/mediation/debugger/ui/a/b$a;
.super Lcom/applovin/impl/mediation/debugger/ui/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/debugger/ui/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

.field private final o:Lcom/applovin/impl/mediation/debugger/a/a/b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/a/b;Lcom/applovin/impl/mediation/debugger/a/a/b;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/a/a/b;->a()Lcom/applovin/impl/mediation/debugger/a/b/b;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->a(Lcom/applovin/impl/mediation/debugger/ui/a/b;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;-><init>(Lcom/applovin/impl/mediation/debugger/a/b/b;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->o:Lcom/applovin/impl/mediation/debugger/a/a/b;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/a/a/b;->c()Ljava/lang/String;

    move-result-object p1

    const/high16 p2, -0x1000000

    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->createSpannedString(Ljava/lang/String;III)Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->d:Landroid/text/SpannedString;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/text/SpannedString;

    invoke-direct {p1, p3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->e:Landroid/text/SpannedString;

    iput-boolean p4, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/mediation/debugger/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->o:Lcom/applovin/impl/mediation/debugger/a/a/b;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/c;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    const v0, -0xbbbbbc

    return v0
.end method
