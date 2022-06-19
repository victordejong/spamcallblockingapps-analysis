.class public final Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoUrlCache"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/callapp/contacts/model/contact/DataSource;

.field private final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Integer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;->a:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;->b:Lcom/callapp/contacts/model/contact/DataSource;

    .line 53
    iput-object p3, p0, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;->b:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public final getPhotoBGColor()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;->a:Ljava/lang/String;

    return-object v0
.end method
