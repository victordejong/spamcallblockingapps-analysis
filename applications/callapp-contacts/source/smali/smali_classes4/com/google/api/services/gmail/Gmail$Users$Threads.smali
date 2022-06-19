.class public final Lcom/google/api/services/gmail/Gmail$Users$Threads;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Threads"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Threads$Untrash;,
        Lcom/google/api/services/gmail/Gmail$Users$Threads$Trash;,
        Lcom/google/api/services/gmail/Gmail$Users$Threads$Modify;,
        Lcom/google/api/services/gmail/Gmail$Users$Threads$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Threads$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Threads$Delete;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/gmail/Gmail$Users;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users;)V
    .locals 0

    .line 8910
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads;->a:Lcom/google/api/services/gmail/Gmail$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
