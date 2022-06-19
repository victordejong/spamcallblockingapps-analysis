.class final Lcom/google/i18n/phonenumbers/f;
.super Ljava/lang/Object;
.source "MultiFileMetadataSourceImpl.java"

# interfaces
.implements Lcom/google/i18n/phonenumbers/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/i18n/phonenumbers/c;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/h$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/c;)V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/f;-><init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/c;)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/c;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/f;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/f;->b:Lcom/google/i18n/phonenumbers/c;

    .line 55
    return-void
.end method

.method private b(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-static {}, Lcom/google/i18n/phonenumbers/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    const-string/jumbo v3, "001"

    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 83
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/google/i18n/phonenumbers/h$b;
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/f;->b:Lcom/google/i18n/phonenumbers/c;

    invoke-static {v0, v1, v2, v3}, Lcom/google/i18n/phonenumbers/d;->a(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/c;)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$b;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/f;->b:Lcom/google/i18n/phonenumbers/c;

    invoke-static {p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/d;->a(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/c;)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object v0

    return-object v0
.end method
