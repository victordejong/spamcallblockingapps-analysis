.class public final Lcom/google/api/services/drive/Drive$Drives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Drives"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Drives$Update;,
        Lcom/google/api/services/drive/Drive$Drives$Unhide;,
        Lcom/google/api/services/drive/Drive$Drives$List;,
        Lcom/google/api/services/drive/Drive$Drives$Hide;,
        Lcom/google/api/services/drive/Drive$Drives$Get;,
        Lcom/google/api/services/drive/Drive$Drives$Delete;,
        Lcom/google/api/services/drive/Drive$Drives$Create;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .line 2440
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Drives;->a:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
