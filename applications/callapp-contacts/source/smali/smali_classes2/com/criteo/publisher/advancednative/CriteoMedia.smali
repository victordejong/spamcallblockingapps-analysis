.class public abstract Lcom/criteo/publisher/advancednative/CriteoMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/net/URL;)Lcom/criteo/publisher/advancednative/CriteoMedia;
    .locals 1

    .line 32
    new-instance v0, Lcom/criteo/publisher/advancednative/d;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/advancednative/d;-><init>(Ljava/net/URL;)V

    return-object v0
.end method


# virtual methods
.method abstract getImageUrl()Ljava/net/URL;
.end method
