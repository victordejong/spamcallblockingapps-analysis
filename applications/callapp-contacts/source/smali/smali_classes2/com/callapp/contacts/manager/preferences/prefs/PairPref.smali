.class public Lcom/callapp/contacts/manager/preferences/prefs/PairPref;
.super Lcom/callapp/contacts/manager/preferences/BasePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/manager/preferences/BasePref<",
        "Landroid/util/Pair<",
        "TT;TR;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/manager/preferences/BasePref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/manager/preferences/BasePref<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/callapp/contacts/manager/preferences/BasePref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/manager/preferences/BasePref<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/preferences/BasePref;Lcom/callapp/contacts/manager/preferences/BasePref;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/preferences/BasePref<",
            "TT;>;",
            "Lcom/callapp/contacts/manager/preferences/BasePref<",
            "TR;>;)V"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/callapp/contacts/manager/preferences/BasePref;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/callapp/contacts/manager/preferences/BasePref;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->a:Lcom/callapp/contacts/manager/preferences/BasePref;

    .line 15
    iput-object p2, p0, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->b:Lcom/callapp/contacts/manager/preferences/BasePref;

    return-void
.end method


# virtual methods
.method public synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const-string v0, "@"

    .line 1020
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1021
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->a:Lcom/callapp/contacts/manager/preferences/BasePref;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/BasePref;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->b:Lcom/callapp/contacts/manager/preferences/BasePref;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 6
    check-cast p1, Landroid/util/Pair;

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->a:Lcom/callapp/contacts/manager/preferences/BasePref;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/BasePref;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->b:Lcom/callapp/contacts/manager/preferences/BasePref;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
