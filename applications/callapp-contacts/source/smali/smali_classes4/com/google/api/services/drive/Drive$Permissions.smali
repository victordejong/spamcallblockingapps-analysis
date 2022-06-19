.class public final Lcom/google/api/services/drive/Drive$Permissions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Permissions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Permissions$Update;,
        Lcom/google/api/services/drive/Drive$Permissions$List;,
        Lcom/google/api/services/drive/Drive$Permissions$Get;,
        Lcom/google/api/services/drive/Drive$Permissions$Delete;,
        Lcom/google/api/services/drive/Drive$Permissions$Create;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .line 6240
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions;->a:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
