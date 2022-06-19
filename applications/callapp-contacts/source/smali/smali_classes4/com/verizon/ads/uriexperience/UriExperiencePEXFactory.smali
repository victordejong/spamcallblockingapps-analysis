.class public Lcom/verizon/ads/uriexperience/UriExperiencePEXFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/PEXFactory;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/verizon/ads/uriexperience/UriExperiencePEXFactory;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/verizon/ads/PEXHandler;
    .locals 2

    .line 28
    new-instance v0, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;

    iget-object v1, p0, Lcom/verizon/ads/uriexperience/UriExperiencePEXFactory;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/verizon/ads/uriexperience/UriExperiencePEXHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
