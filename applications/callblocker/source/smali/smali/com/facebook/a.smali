.class public final Lcom/facebook/a;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/Date;

.field private static final b:Ljava/util/Date;

.field private static final c:Ljava/util/Date;

.field private static final d:Lcom/facebook/d;


# instance fields
.field private final e:Ljava/util/Date;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Lcom/facebook/d;

.field private final k:Ljava/util/Date;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/util/Date;

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Ljava/util/Date;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/a;->a:Ljava/util/Date;

    .line 60
    sget-object v0, Lcom/facebook/a;->a:Ljava/util/Date;

    sput-object v0, Lcom/facebook/a;->b:Ljava/util/Date;

    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/facebook/a;->c:Ljava/util/Date;

    .line 62
    sget-object v0, Lcom/facebook/d;->b:Lcom/facebook/d;

    sput-object v0, Lcom/facebook/a;->d:Lcom/facebook/d;

    .line 811
    new-instance v0, Lcom/facebook/a$1;

    invoke-direct {v0}, Lcom/facebook/a$1;-><init>()V

    sput-object v0, Lcom/facebook/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/a;->e:Ljava/util/Date;

    .line 771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 772
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 773
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/a;->f:Ljava/util/Set;

    .line 774
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 775
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 776
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/a;->g:Ljava/util/Set;

    .line 778
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 779
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 780
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->h:Ljava/util/Set;

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->i:Ljava/lang/String;

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d;->valueOf(Ljava/lang/String;)Lcom/facebook/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->j:Lcom/facebook/d;

    .line 784
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/a;->k:Ljava/util/Date;

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->l:Ljava/lang/String;

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->m:Ljava/lang/String;

    .line 787
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/a;->n:Ljava/util/Date;

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->o:Ljava/lang/String;

    .line 789
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/d;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/d;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const-string/jumbo v0, "accessToken"

    invoke-static {p1, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "userId"

    invoke-static {p3, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz p8, :cond_0

    :goto_0
    iput-object p8, p0, Lcom/facebook/a;->e:Ljava/util/Date;

    .line 203
    if-eqz p4, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->f:Ljava/util/Set;

    .line 205
    if-eqz p5, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->g:Ljava/util/Set;

    .line 209
    if-eqz p6, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->h:Ljava/util/Set;

    .line 213
    iput-object p1, p0, Lcom/facebook/a;->i:Ljava/lang/String;

    .line 214
    if-eqz p7, :cond_4

    :goto_4
    iput-object p7, p0, Lcom/facebook/a;->j:Lcom/facebook/d;

    .line 215
    if-eqz p9, :cond_5

    :goto_5
    iput-object p9, p0, Lcom/facebook/a;->k:Ljava/util/Date;

    .line 216
    iput-object p2, p0, Lcom/facebook/a;->l:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lcom/facebook/a;->m:Ljava/lang/String;

    .line 218
    if-eqz p10, :cond_6

    .line 219
    invoke-virtual {p10}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    :goto_6
    iput-object p10, p0, Lcom/facebook/a;->n:Ljava/util/Date;

    .line 222
    iput-object p11, p0, Lcom/facebook/a;->o:Ljava/lang/String;

    .line 223
    return-void

    .line 202
    :cond_0
    sget-object p8, Lcom/facebook/a;->b:Ljava/util/Date;

    goto :goto_0

    .line 203
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    .line 205
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_2

    .line 209
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_3

    .line 214
    :cond_4
    sget-object p7, Lcom/facebook/a;->d:Lcom/facebook/d;

    goto :goto_4

    .line 215
    :cond_5
    sget-object p9, Lcom/facebook/a;->c:Ljava/util/Date;

    goto :goto_5

    .line 219
    :cond_6
    sget-object p10, Lcom/facebook/a;->b:Ljava/util/Date;

    goto :goto_6
.end method

.method public static a()Lcom/facebook/a;
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/c;->b()Lcom/facebook/a;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/os/Bundle;)Lcom/facebook/a;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 587
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-static {p0, v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 590
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    invoke-static {p0, v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 593
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ExpiredPermissions"

    invoke-static {p0, v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 597
    invoke-static {p0}, Lcom/facebook/p;->d(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-static {v2}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v2

    .line 602
    :cond_0
    invoke-static {p0}, Lcom/facebook/p;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-static {v1}, Lcom/facebook/internal/x;->f(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 606
    :try_start_0
    const-string/jumbo v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 613
    new-instance v0, Lcom/facebook/a;

    .line 620
    invoke-static {p0}, Lcom/facebook/p;->c(Landroid/os/Bundle;)Lcom/facebook/d;

    move-result-object v7

    const-string/jumbo v8, "com.facebook.TokenCachingStrategy.ExpirationDate"

    .line 621
    invoke-static {p0, v8}, Lcom/facebook/p;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    const-string/jumbo v9, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    .line 624
    invoke-static {p0, v9}, Lcom/facebook/p;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-direct/range {v0 .. v10}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 613
    :goto_0
    return-object v0

    .line 607
    :catch_0
    move-exception v0

    move-object v0, v10

    .line 610
    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)Lcom/facebook/a;
    .locals 14

    .prologue
    .line 686
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 687
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 688
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unknown AccessToken serialization format."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    const-string/jumbo v0, "token"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 692
    new-instance v8, Ljava/util/Date;

    const-string/jumbo v0, "expires_at"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 693
    const-string/jumbo v0, "permissions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 694
    const-string/jumbo v0, "declined_permissions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 695
    const-string/jumbo v0, "expired_permissions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 696
    new-instance v9, Ljava/util/Date;

    const-string/jumbo v0, "last_refresh"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v9, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 697
    const-string/jumbo v0, "source"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d;->valueOf(Ljava/lang/String;)Lcom/facebook/d;

    move-result-object v7

    .line 698
    const-string/jumbo v0, "application_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 699
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    new-instance v10, Ljava/util/Date;

    const-string/jumbo v0, "data_access_expiration_time"

    const-wide/16 v12, 0x0

    .line 701
    invoke-virtual {p0, v0, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 702
    const-string/jumbo v0, "graph_domain"

    const/4 v11, 0x0

    invoke-virtual {p0, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 704
    new-instance v0, Lcom/facebook/a;

    .line 708
    invoke-static {v4}, Lcom/facebook/internal/x;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 709
    invoke-static {v5}, Lcom/facebook/internal/x;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 712
    :goto_0
    invoke-direct/range {v0 .. v11}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    .line 704
    return-object v0

    .line 712
    :cond_1
    invoke-static {v6}, Lcom/facebook/internal/x;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    goto :goto_0
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 635
    if-nez v0, :cond_0

    .line 636
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 640
    :goto_0
    return-object v0

    .line 638
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/a;)V
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/c;->a(Lcom/facebook/a;)V

    .line 267
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 759
    const-string/jumbo v0, " permissions:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    iget-object v0, p0, Lcom/facebook/a;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 761
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :goto_0
    return-void

    .line 763
    :cond_0
    const-string/jumbo v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string/jumbo v0, ", "

    iget-object v1, p0, Lcom/facebook/a;->f:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static b(Lcom/facebook/a;)Lcom/facebook/a;
    .locals 11

    .prologue
    .line 573
    new-instance v0, Lcom/facebook/a;

    iget-object v1, p0, Lcom/facebook/a;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/a;->l:Ljava/lang/String;

    .line 576
    invoke-virtual {p0}, Lcom/facebook/a;->m()Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-virtual {p0}, Lcom/facebook/a;->g()Ljava/util/Set;

    move-result-object v4

    .line 578
    invoke-virtual {p0}, Lcom/facebook/a;->h()Ljava/util/Set;

    move-result-object v5

    .line 579
    invoke-virtual {p0}, Lcom/facebook/a;->i()Ljava/util/Set;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/a;->j:Lcom/facebook/d;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    iget-object v10, p0, Lcom/facebook/a;->n:Ljava/util/Date;

    invoke-direct/range {v0 .. v10}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 573
    return-object v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/c;->b()Lcom/facebook/a;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c()V
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/c;->b()Lcom/facebook/a;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-static {v0}, Lcom/facebook/a;->b(Lcom/facebook/a;)Lcom/facebook/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a;->a(Lcom/facebook/a;)V

    .line 258
    :cond_0
    return-void
.end method

.method private q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/facebook/a;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 750
    const-string/jumbo v0, "null"

    .line 754
    :goto_0
    return-object v0

    .line 751
    :cond_0
    sget-object v0, Lcom/facebook/q;->b:Lcom/facebook/q;

    invoke-static {v0}, Lcom/facebook/j;->a(Lcom/facebook/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/facebook/a;->i:Ljava/lang/String;

    goto :goto_0

    .line 754
    :cond_1
    const-string/jumbo v0, "ACCESS_TOKEN_REMOVED"

    goto :goto_0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/Date;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/facebook/a;->e:Ljava/util/Date;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 493
    if-ne p0, p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v0

    .line 497
    :cond_1
    instance-of v2, p1, Lcom/facebook/a;

    if-nez v2, :cond_2

    move v0, v1

    .line 498
    goto :goto_0

    .line 501
    :cond_2
    check-cast p1, Lcom/facebook/a;

    .line 503
    iget-object v2, p0, Lcom/facebook/a;->e:Ljava/util/Date;

    iget-object v3, p1, Lcom/facebook/a;->e:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/a;->f:Ljava/util/Set;

    iget-object v3, p1, Lcom/facebook/a;->f:Ljava/util/Set;

    .line 504
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/a;->g:Ljava/util/Set;

    iget-object v3, p1, Lcom/facebook/a;->g:Ljava/util/Set;

    .line 505
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/a;->h:Ljava/util/Set;

    iget-object v3, p1, Lcom/facebook/a;->h:Ljava/util/Set;

    .line 506
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/a;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/a;->i:Ljava/lang/String;

    .line 507
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/a;->j:Lcom/facebook/d;

    iget-object v3, p1, Lcom/facebook/a;->j:Lcom/facebook/d;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/facebook/a;->k:Ljava/util/Date;

    iget-object v3, p1, Lcom/facebook/a;->k:Ljava/util/Date;

    .line 509
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/a;->l:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/facebook/a;->l:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 512
    :goto_1
    iget-object v2, p0, Lcom/facebook/a;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/a;->m:Ljava/lang/String;

    .line 513
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/a;->n:Ljava/util/Date;

    iget-object v3, p1, Lcom/facebook/a;->n:Ljava/util/Date;

    .line 514
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/a;->o:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/facebook/a;->o:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 517
    goto :goto_0

    .line 509
    :cond_4
    iget-object v2, p0, Lcom/facebook/a;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/a;->l:Ljava/lang/String;

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 514
    :cond_5
    iget-object v2, p0, Lcom/facebook/a;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/a;->o:Ljava/lang/String;

    .line 517
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public f()Ljava/util/Date;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/a;->n:Ljava/util/Date;

    return-object v0
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/facebook/a;->f:Ljava/util/Set;

    return-object v0
.end method

.method public h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/facebook/a;->g:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 522
    .line 524
    iget-object v0, p0, Lcom/facebook/a;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 525
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/a;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 526
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/a;->g:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 527
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/a;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 528
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/a;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 529
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/a;->j:Lcom/facebook/d;

    invoke-virtual {v2}, Lcom/facebook/d;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 530
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/a;->k:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 531
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/a;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 532
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/a;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 533
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/a;->n:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 534
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/a;->o:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 536
    return v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/facebook/a;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/facebook/a;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public i()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/facebook/a;->h:Ljava/util/Set;

    return-object v0
.end method

.method public j()Lcom/facebook/d;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/facebook/a;->j:Lcom/facebook/d;

    return-object v0
.end method

.method public k()Ljava/util/Date;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/facebook/a;->k:Ljava/util/Date;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/facebook/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/facebook/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/facebook/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 649
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/facebook/a;->e:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method p()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 662
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 664
    const-string/jumbo v1, "version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 665
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/facebook/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    const-string/jumbo v1, "expires_at"

    iget-object v2, p0, Lcom/facebook/a;->e:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 667
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/facebook/a;->f:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 668
    const-string/jumbo v2, "permissions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/facebook/a;->g:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 670
    const-string/jumbo v2, "declined_permissions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/facebook/a;->h:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 672
    const-string/jumbo v2, "expired_permissions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    const-string/jumbo v1, "last_refresh"

    iget-object v2, p0, Lcom/facebook/a;->k:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 674
    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/facebook/a;->j:Lcom/facebook/d;

    invoke-virtual {v2}, Lcom/facebook/d;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    const-string/jumbo v1, "application_id"

    iget-object v2, p0, Lcom/facebook/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/facebook/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 677
    const-string/jumbo v1, "data_access_expiration_time"

    iget-object v2, p0, Lcom/facebook/a;->n:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 678
    iget-object v1, p0, Lcom/facebook/a;->o:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 679
    const-string/jumbo v1, "graph_domain"

    iget-object v2, p0, Lcom/facebook/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    const-string/jumbo v1, "{AccessToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string/jumbo v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-direct {p0, v0}, Lcom/facebook/a;->a(Ljava/lang/StringBuilder;)V

    .line 486
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/facebook/a;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/a;->f:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/a;->g:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/a;->h:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 802
    iget-object v0, p0, Lcom/facebook/a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/facebook/a;->j:Lcom/facebook/d;

    invoke-virtual {v0}, Lcom/facebook/d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/facebook/a;->k:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 805
    iget-object v0, p0, Lcom/facebook/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/facebook/a;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/facebook/a;->n:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 808
    iget-object v0, p0, Lcom/facebook/a;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 809
    return-void
.end method
