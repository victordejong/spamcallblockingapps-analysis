.class Lcom/google/i18n/phonenumbers/a/c$a$1;
.super Ljava/util/LinkedHashMap;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/i18n/phonenumbers/a/c$a;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/i18n/phonenumbers/a/c$a;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/a/c$a;IFZ)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/a/c$a$1;->a:Lcom/google/i18n/phonenumbers/a/c$a;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/a/c$a$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a/c$a$1;->a:Lcom/google/i18n/phonenumbers/a/c$a;

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/a/c$a;->a(Lcom/google/i18n/phonenumbers/a/c$a;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
