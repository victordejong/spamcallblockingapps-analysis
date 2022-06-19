.class public final Lcom/google/api/services/drive/Drive$Revisions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Revisions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Revisions$Update;,
        Lcom/google/api/services/drive/Drive$Revisions$List;,
        Lcom/google/api/services/drive/Drive$Revisions$Get;,
        Lcom/google/api/services/drive/Drive$Revisions$Delete;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .line 8763
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Revisions;->a:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
