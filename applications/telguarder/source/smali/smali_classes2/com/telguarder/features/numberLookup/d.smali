.class public Lcom/telguarder/features/numberLookup/d;
.super Lio/realm/RealmObject;
.source "d.java"

# interfaces
.implements Lio/realm/com_telguarder_features_numberLookup_dRealmProxyInterface;


# instance fields
.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getB()Ljava/lang/Long;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/d;->realmGet$b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getC()Ljava/lang/Long;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/d;->realmGet$c()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$b()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/d;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public realmGet$c()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/d;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public realmSet$b(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/d;->b:Ljava/lang/Long;

    return-void
.end method

.method public realmSet$c(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/d;->c:Ljava/lang/Long;

    return-void
.end method

.method public setB(Ljava/lang/Long;)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/d;->realmSet$b(Ljava/lang/Long;)V

    return-void
.end method

.method public setC(Ljava/lang/Long;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/d;->realmSet$c(Ljava/lang/Long;)V

    return-void
.end method
