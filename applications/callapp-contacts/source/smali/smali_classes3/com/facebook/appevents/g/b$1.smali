.class final Lcom/facebook/appevents/g/b$1;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/g/b;-><init>(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/g/b;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/g/b;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/facebook/appevents/g/b$1;->a:Lcom/facebook/appevents/g/b;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 74
    sget-object p1, Lcom/facebook/appevents/g/c$a;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/g/c$a;

    invoke-virtual {p1}, Lcom/facebook/appevents/g/c$a;->toKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/g/b$1;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object p1, Lcom/facebook/appevents/g/c$a;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/g/c$a;

    invoke-virtual {p1}, Lcom/facebook/appevents/g/c$a;->toKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/g/b$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
