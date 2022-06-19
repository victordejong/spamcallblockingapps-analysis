.class public final Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Filters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Delete;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters$Create;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/gmail/Gmail$Users$Settings;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;)V
    .locals 0

    .line 6233
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Filters;->a:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
