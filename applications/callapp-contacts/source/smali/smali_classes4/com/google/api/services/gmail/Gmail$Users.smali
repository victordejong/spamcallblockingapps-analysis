.class public final Lcom/google/api/services/gmail/Gmail$Users;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Users"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Threads;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings;,
        Lcom/google/api/services/gmail/Gmail$Users$Messages;,
        Lcom/google/api/services/gmail/Gmail$Users$Labels;,
        Lcom/google/api/services/gmail/Gmail$Users$History;,
        Lcom/google/api/services/gmail/Gmail$Users$Drafts;,
        Lcom/google/api/services/gmail/Gmail$Users$Watch;,
        Lcom/google/api/services/gmail/Gmail$Users$Stop;,
        Lcom/google/api/services/gmail/Gmail$Users$GetProfile;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/gmail/Gmail;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users;->a:Lcom/google/api/services/gmail/Gmail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/services/gmail/Gmail$Users$Messages;
    .locals 1

    .line 2493
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Messages;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users$Messages;-><init>(Lcom/google/api/services/gmail/Gmail$Users;)V

    return-object v0
.end method
