.class final Lcom/criteo/publisher/advancednative/f$c;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/f;->b(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/f;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V
    .locals 0

    .line 81
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/f$c;->a:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/f$c;->a:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdClosed()V

    return-void
.end method
