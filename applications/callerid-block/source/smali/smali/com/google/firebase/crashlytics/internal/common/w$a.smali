.class Lcom/google/firebase/crashlytics/internal/common/w$a;
.super Lorg/json/JSONObject;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/w;->d(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .locals 1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/w$a;->a:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
