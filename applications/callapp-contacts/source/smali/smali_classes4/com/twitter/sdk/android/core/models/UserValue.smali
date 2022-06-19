.class public Lcom/twitter/sdk/android/core/models/UserValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final idStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "id_str"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserValue;->idStr:Ljava/lang/String;

    return-void
.end method
